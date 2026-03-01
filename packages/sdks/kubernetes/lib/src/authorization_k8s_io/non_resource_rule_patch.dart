// ignore_for_file: unused_element, unnecessary_cast


/// NonResourceRule holds information that describes a rule for the non-resource
class NonResourceRulePatch {
  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  final List<String>? nonResourceURLs;
  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  final List<String>? verbs;

  /// Creates a new [NonResourceRulePatch].
  /// [nonResourceURLs] NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  "*" means all.
  /// [verbs] Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  NonResourceRulePatch({
    this.nonResourceURLs,
    this.verbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nonResourceURLs': ?nonResourceURLs,
      'verbs': ?verbs,
    };
  }

  factory NonResourceRulePatch.fromMap(Map<String, dynamic> map) {
    return NonResourceRulePatch(
      nonResourceURLs: map['nonResourceURLs'] == null ? null : (map['nonResourceURLs'] as List).cast<String>(),
      verbs: map['verbs'] == null ? null : (map['verbs'] as List).cast<String>(),
    );
  }
}

