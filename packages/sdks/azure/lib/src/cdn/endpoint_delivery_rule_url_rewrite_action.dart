// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeliveryRuleUrlRewriteAction {
  /// This value must start with a `/` and can't be longer than 260 characters.
  final String destination;
  /// Whether preserve an unmatched path. Defaults to `true`.
  final bool? preserveUnmatchedPath;
  /// This value must start with a `/` and can't be longer than 260 characters.
  final String sourcePattern;

  /// Creates a new [EndpointDeliveryRuleUrlRewriteAction].
  /// [destination] This value must start with a `/` and can't be longer than 260 characters.
  /// [preserveUnmatchedPath] Whether preserve an unmatched path. Defaults to `true`.
  /// [sourcePattern] This value must start with a `/` and can't be longer than 260 characters.
  EndpointDeliveryRuleUrlRewriteAction({
    required this.destination,
    this.preserveUnmatchedPath,
    required this.sourcePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'preserveUnmatchedPath': ?preserveUnmatchedPath,
      'sourcePattern': sourcePattern,
    };
  }

  factory EndpointDeliveryRuleUrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return EndpointDeliveryRuleUrlRewriteAction(
      destination: map['destination'] as String,
      preserveUnmatchedPath: map['preserveUnmatchedPath'] == null ? null : map['preserveUnmatchedPath'] as bool,
      sourcePattern: map['sourcePattern'] as String,
    );
  }
}

