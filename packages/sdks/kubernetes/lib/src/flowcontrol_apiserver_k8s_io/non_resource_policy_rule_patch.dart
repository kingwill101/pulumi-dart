// ignore_for_file: unused_element, unnecessary_cast


/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
class NonResourcePolicyRulePatch {
  /// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
  /// - "/healthz" is legal
  /// - "/hea*" is illegal
  /// - "/hea" is legal but matches nothing
  /// - "/hea/*" also matches nothing
  /// - "/healthz/*" matches all per-component health checks.
  /// "*" matches all non-resource urls. if it is present, it must be the only entry. Required.
  final List<String>? nonResourceURLs;
  /// `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
  final List<String>? verbs;

  /// Creates a new [NonResourcePolicyRulePatch].
  /// [nonResourceURLs] `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty. For example:
  /// [verbs] `verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is present, it must be the only entry. Required.
  NonResourcePolicyRulePatch({
    this.nonResourceURLs,
    this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceURLs': ?nonResourceURLs,
      'verbs': ?verbs,
    };
  }

  factory NonResourcePolicyRulePatch.fromMap(Map<String, dynamic> map) {
    return NonResourcePolicyRulePatch(
      nonResourceURLs: map['nonResourceURLs'] == null ? null : (map['nonResourceURLs'] as List).cast<String>(),
      verbs: map['verbs'] == null ? null : (map['verbs'] as List).cast<String>(),
    );
  }
}

