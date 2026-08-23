// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_lien_lien_args_doc}
/// The set of arguments for Lien.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_lien_lien_args_doc}
class LienArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A stable, user-visible/meaningful string identifying the origin
  /// of the Lien, intended to be inspected programmatically. Maximum length of
  /// 200 characters.
  final pulumi.Input<String> origin;
  /// A reference to the resource this Lien is attached to.
  /// The server will validate the parent against those for which Liens are supported.
  /// Since a variety of objects can have Liens against them, you must provide the type
  /// prefix (e.g. "projects/my-project-name").
  final pulumi.Input<String> parent;
  /// Concise user-visible strings indicating why an action cannot be performed
  /// on a resource. Maximum length of 200 characters.
  final pulumi.Input<String> reason;
  /// The types of operations which should be blocked as a result of this Lien.
  /// Each value should correspond to an IAM permission. The server will validate
  /// the permissions against those for which Liens are supported.  An empty
  /// list is meaningless and will be rejected.
  /// e.g. ['resourcemanager.projects.delete']
  final pulumi.Input<List<String>> restrictions;

  /// Creates a new [LienArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [origin] A stable, user-visible/meaningful string identifying the origin
  /// [parent] A reference to the resource this Lien is attached to.
  /// [reason] Concise user-visible strings indicating why an action cannot be performed
  /// [restrictions] The types of operations which should be blocked as a result of this Lien.
  const LienArgs({
    this.deletionPolicy,
    required this.origin,
    required this.parent,
    required this.reason,
    required this.restrictions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'origin': origin,
      'parent': parent,
      'reason': reason,
      'restrictions': restrictions,
    };
  }

  factory LienArgs.fromMap(Map<String, dynamic> map) {
    return LienArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      origin: pulumi.Input.fromValue(map['origin'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      reason: pulumi.Input.fromValue(map['reason'] as String),
      restrictions: pulumi.Input.fromValue((map['restrictions'] as List).cast<String>()),
    );
  }
}
