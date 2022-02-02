class Wilayah {
  String _name;
  int _kcu, _kcp, _kk;
  Wilayah(this._name, this._kcu, this._kcp, this._kk);
  String get name => this._name;
  int get kcu => this._kcu;
  int get kcp => this._kcp;
  int get kk => this._kk;
  set name(String name) {
    this._name = name;
  }

  set kcu(int kcu) {
    this._kcu = kcu;
  }

  set kcp(int kcp) {
    this._kcp = kcp;
  }

  set kk(int kk) {
    this._kk = kk;
  }
}
