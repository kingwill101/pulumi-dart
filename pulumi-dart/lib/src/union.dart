class Union<T0, T1> {
  final T0? _t0;
  final T1? _t1;
  final int _which;

  Union._internal(this._t0, this._t1, this._which);

  factory Union.fromT0(T0 value) => Union._internal(value, null, 0);
  factory Union.fromT1(T1 value) => Union._internal(null, value, 1);

  T0 get asT0 => _which == 0 ? _t0! : throw StateError('Not of type T0');
  T1 get asT1 => _which == 1 ? _t1! : throw StateError('Not of type T1');

  bool get isT0 => _which == 0;
  bool get isT1 => _which == 1;
  dynamic get value => _which == 0 ? _t0 : _t1;

  TResult match<TResult>(TResult Function(T0) f0, TResult Function(T1) f1) {
    if (_which == 0) return f0(_t0!);
    return f1(_t1!);
  }
}
