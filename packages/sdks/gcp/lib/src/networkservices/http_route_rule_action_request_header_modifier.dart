// ignore_for_file: unused_element, unnecessary_cast


class HttpRouteRuleActionRequestHeaderModifier {
  /// Add the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? add;
  /// Remove headers (matching by header names) specified in the list.
  final List<String>? removes;
  /// Completely overwrite/replace the headers with given map where key is the name of the header, value is the value of the header.
  final Map<String, String>? set;

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
      add: map['add'] == null ? null : (map['add'] as Map).cast<String, String>(),
      removes: map['removes'] == null ? null : (map['removes'] as List).cast<String>(),
      set: map['set'] == null ? null : (map['set'] as Map).cast<String, String>(),
    );
  }
}

