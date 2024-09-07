import 'dart:collection';

import 'input.dart';
import 'output.dart';

class InputList<T> extends ListBase<Input<T>> implements Input<List<T>> {
  final List<Input<T>> _list = [];

  InputList([Iterable<Input<T>> inputs = const []]) {
    _list.addAll(inputs);
  }

  @override
  Output<List<T>> toOutput() {
    return Output.all(_list.map((input) => input.toOutput()));
  }

  @override
  void add(Input<T> element) {
    _list.add(element);
  }

  void addValue(T value) {
    _list.add(Input.fromValue(value));
  }

  @override
  void addAll(Iterable<Input<T>> iterable) {
    _list.addAll(iterable);
  }

  void addAllValues(Iterable<T> values) {
    _list.addAll(values.map((v) => Input.fromValue(v)));
  }

  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    _list.length = newLength;
  }

  @override
  Input<T> operator [](int index) => _list[index];

  @override
  void operator []=(int index, Input<T> value) {
    _list[index] = value;
  }
}

class InputMap<V> extends MapBase<String, Input<V>>
    implements Input<Map<String, V>> {
  final Map<String, Input<V>> _map = {};

  InputMap([Map<String, Input<V>> inputs = const {}]) {
    _map.addAll(inputs);
  }

  @override
  Output<Map<String, V>> toOutput() {
    return Output.all(_map.entries.map((entry) =>
      entry.value.toOutput().apply(
        (value) => Output.create(MapEntry(entry.key, value))
      )
    )).apply((entries) =>
      Map<String, V>.fromEntries(entries.cast<MapEntry<String, V>>())
    );
  }

  @override
  void addAll(Map<String, Input<V>> other) {
    _map.addAll(other);
  }

  void addAllValues(Map<String, V> other) {
    other.forEach((key, value) {
      this[key] = Input.fromValue(value);
    });
  }

  @override
  Input<V>? operator [](Object? key) => _map[key];

  @override
  void operator []=(String key, Input<V> value) {
    _map[key] = value;
  }

  void setValue(String key, V value) {
    this[key] = Input.fromValue(value);
  }

  @override
  void clear() => _map.clear();

  @override
  Iterable<String> get keys => _map.keys;

  @override
  Input<V>? remove(Object? key) => _map.remove(key);

  static InputMap<T> merge<T>(InputMap<T> map1, InputMap<T> map2) {
    final mergedMap = {...map1._map, ...map2._map};
    return InputMap<T>(mergedMap);
  }
}
