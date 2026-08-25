// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Owner resources.
class OwnerState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// The email of the user to be added as an owner.
  final pulumi.Input<String?>? email;
  /// The id of of the web resource to which the owner will be added, in the form `webResource/&lt;resource_id&gt;`,
  /// such as `webResource/https://www.example.com/`
  final pulumi.Input<String?>? webResourceId;

  /// Creates a new [OwnerState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [email] The email of the user to be added as an owner.
  /// [webResourceId] The id of of the web resource to which the owner will be added, in the form `webResource/&lt;resource_id&gt;`,
  const OwnerState({
    this.deletionPolicy,
    this.email,
    this.webResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'email': ?email,
      'webResourceId': ?webResourceId,
    };
  }

  factory OwnerState.fromMap(Map<String, dynamic> map) {
    return OwnerState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webResourceId: (() { final guardedValue = map['webResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
