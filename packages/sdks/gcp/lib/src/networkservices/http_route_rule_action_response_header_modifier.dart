// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionResponseHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? add;
  /// Remove headers (matching by header names) specified in the list.
  final pulumi.Input<List<String>>? removes;
  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? set;

  /// Creates a new [HttpRouteRuleActionResponseHeaderModifier].
  /// [add] Add the headers with given map where key is the name of the header, value is the value of the header.
  /// [removes] Remove headers (matching by header names) specified in the list.
  /// [set] Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  const HttpRouteRuleActionResponseHeaderModifier({
    this.add,
    this.removes,
    this.set,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'removes': ?removes,
      'set': ?set,
    };
  }

  factory HttpRouteRuleActionResponseHeaderModifier.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionResponseHeaderModifier(
      add: (() { final guardedValue = map['add']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      removes: (() { final guardedValue = map['removes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      set: (() { final guardedValue = map['set']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

