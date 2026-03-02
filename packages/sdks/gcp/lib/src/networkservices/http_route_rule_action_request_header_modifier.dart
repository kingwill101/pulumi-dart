// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HttpRouteRuleActionRequestHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? add;
  /// Remove headers (matching by header names) specified in the list.
  final pulumi.Input<List<String>>? removes;
  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final pulumi.Input<Map<String, String>>? set;

  /// Creates a new [HttpRouteRuleActionRequestHeaderModifier].
  /// [add] Add the headers with given map where key is the name of the header, value is the value of the header.
  /// [removes] Remove headers (matching by header names) specified in the list.
  /// [set] Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  HttpRouteRuleActionRequestHeaderModifier({
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

  factory HttpRouteRuleActionRequestHeaderModifier.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionRequestHeaderModifier(
      add: map['add'] == null ? null : ((map['add']! as Map).cast<String, String>()).input(),
      removes: map['removes'] == null ? null : ((map['removes']! as List).cast<String>()).input(),
      set: map['set'] == null ? null : ((map['set']! as Map).cast<String, String>()).input(),
    );
  }
}

