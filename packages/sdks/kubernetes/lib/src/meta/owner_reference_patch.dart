// ignore_for_file: unused_element, unnecessary_cast


/// OwnerReference contains enough information to let you identify an owning object. An owning object must be in the same namespace as the dependent, or be cluster-scoped, so there is no namespace field.
class OwnerReferencePatch {
  /// API version of the referent.
  final String? apiVersion;
  /// If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  final bool? blockOwnerDeletion;
  /// If true, this reference points to the managing controller.
  final bool? controller;
  /// Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
  final String? name;
  /// UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  final String? uid;

  /// Creates a new [OwnerReferencePatch].
  /// [apiVersion] API version of the referent.
  /// [blockOwnerDeletion] If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot be deleted from the key-value store until this reference is removed. See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion for how the garbage collector interacts with this field and enforces the foreground deletion. Defaults to false. To set this field, a user needs "delete" permission of the owner, otherwise 422 (Unprocessable Entity) will be returned.
  /// [controller] If true, this reference points to the managing controller.
  /// [kind] Kind of the referent. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
  /// [uid] UID of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  OwnerReferencePatch({
    this.apiVersion,
    this.blockOwnerDeletion,
    this.controller,
    this.kind,
    this.name,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'blockOwnerDeletion': ?blockOwnerDeletion,
      'controller': ?controller,
      'kind': ?kind,
      'name': ?name,
      'uid': ?uid,
    };
  }

  factory OwnerReferencePatch.fromMap(Map<String, dynamic> map) {
    return OwnerReferencePatch(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      blockOwnerDeletion: map['blockOwnerDeletion'] == null ? null : map['blockOwnerDeletion'] as bool,
      controller: map['controller'] == null ? null : map['controller'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

