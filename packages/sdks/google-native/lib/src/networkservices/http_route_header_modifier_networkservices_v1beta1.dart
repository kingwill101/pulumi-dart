// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specification for modifying HTTP header in HTTP request and HTTP response.
class HttpRouteHeaderModifierNetworkservicesV1beta1 {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? add;

  /// Remove headers (matching by header names) specified in the list.
  final pulumi.Input<List<String>>? remove;

  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? set;

  /// Creates a new [HttpRouteHeaderModifierNetworkservicesV1beta1].
  /// [add] Add the headers with given map where key is the name of the header, value is the value of the header.
  /// [remove] Remove headers (matching by header names) specified in the list.
  /// [set] Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  HttpRouteHeaderModifierNetworkservicesV1beta1({
    this.add,
    this.remove,
    this.set,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'add': ?add, 'remove': ?remove, 'set': ?set};
  }

  factory HttpRouteHeaderModifierNetworkservicesV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return HttpRouteHeaderModifierNetworkservicesV1beta1(
      add: (() {
        final guardedValue = map['add'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      remove: (() {
        final guardedValue = map['remove'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      set: (() {
        final guardedValue = map['set'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
