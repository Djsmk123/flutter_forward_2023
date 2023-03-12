//Interface
class Remote {
  void turnOn() {
    print('Turn on Device');
  }

  void turnOff() {
    print('Turn off Device');
  }
}

// Without interface,just ending no need to override parent class method
class SmartRemote extends Remote {
  void mute() {
    print('Mute TV');
  }
}

// With interface, need to override parent class method
class SmartTV implements Remote {
  @override
  void turnOff() {
    print('Turn off TV');
  }

  @override
  void turnOn() {
    print('Turn on TV');
  }
}

void main(List<String> args) {
  SmartRemote remote = SmartRemote();
  remote.turnOn();
  remote.turnOff();
  remote.mute();
  SmartTV tv = SmartTV();
  tv.turnOn();
  tv.turnOff();
}
