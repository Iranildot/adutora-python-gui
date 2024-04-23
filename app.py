from kivy.app import App
from kivy.uix.widget import Widget
from kivy.properties import ObjectProperty
from kivy.core.window import Window
from kivy.lang import Builder

# TO LOAD THE INTERFACE FILLE
Builder.load_file("interface.kv")

class Interface(Widget):
    nome = ObjectProperty(None)
    
    def press(self):
        print(self.nome.text)

class Start(App):
    def build(self):
        return Interface()

if __name__ == "__main__":
    Start().run()