class song
{
  int choice;
  boolean playing = false;
  boolean stop = false;
  String song = "empty";

  void Choice()
  {
    if (choice == 1)
    {
      song = "Pink Sand.mp3";
    } else if (choice == 2)
    {
      song = "Tinnitus Dance.mp3";
    } else if (choice == 3)
    {
      song = "Amoog Us.mp3";
    }
  }
}
