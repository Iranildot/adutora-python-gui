from kivymd.app import MDApp
from kivy.lang import Builder
from kivy.metrics import dp
from kivymd.uix.pickers import MDDockedDatePicker
from kivymd.uix.menu import MDDropdownMenu

class MainApp(MDApp):
    def __init__(self, **kwargs):
        super().__init__(**kwargs)

    def build(self):
        self.theme_cls.theme_style = "Dark"
        self.theme_cls.primary_palette = "White"
        return Builder.load_file("interface.kv")

    def show_date_picker(self):
        date_dialog = MDDockedDatePicker()
        # You have to control the position of the date picker dialog yourself.
        date_dialog.pos_hint = {"center_x": .5, "center_y": .5}
        date_dialog.open()

    def menu_open(self):
        menu_items = [
            {
                "text": f"Trocar seção",
                "on_release": lambda x=f"Trocar seção": self.menu_callback(x),
            },
            {
                "text": f"Sair",
                "on_release": lambda x=f"Sair": self.menu_callback(x),
            }

        ]
        MDDropdownMenu(
            caller=self.root.ids.button, items=menu_items
        ).open()

    def menu_callback(self, text_item):
        print(text_item)

if __name__ == "__main__":
    MainApp().run()