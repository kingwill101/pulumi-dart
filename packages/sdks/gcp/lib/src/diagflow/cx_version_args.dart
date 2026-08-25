// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_diagflow_cx_version_cx_version_args_doc}
/// The set of arguments for CxVersion.
/// {@endtemplate}
/// {@macro pulumi_diagflow_cx_version_cx_version_args_doc}
class CxVersionArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  final pulumi.Input<String?>? description;
  /// The human-readable name of the version. Limit of 64 characters.
  final pulumi.Input<String> displayName;
  /// The Flow to create an Version for.
  /// Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
  final pulumi.Input<String?>? parent;

  /// Creates a new [CxVersionArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  /// [displayName] The human-readable name of the version. Limit of 64 characters.
  /// [parent] The Flow to create an Version for.
  const CxVersionArgs({
    this.deletionPolicy,
    this.description,
    required this.displayName,
    this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': displayName,
      'parent': ?parent,
    };
  }

  factory CxVersionArgs.fromMap(Map<String, dynamic> map) {
    return CxVersionArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
