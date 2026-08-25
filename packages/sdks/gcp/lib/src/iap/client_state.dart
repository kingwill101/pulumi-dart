// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Client resources.
class ClientState {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String?>? brand;
  /// Output only. Unique identifier of the OAuth client.
  final pulumi.Input<String?>? clientId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String?>? displayName;
  /// Output only. Client secret of the OAuth client.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? secret;

  /// Creates a new [ClientState].
  /// [brand] Identifier of the brand to which this client
  /// [clientId] Output only. Unique identifier of the OAuth client.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-friendly name given to the OAuth client.
  /// [secret] Output only. Client secret of the OAuth client.
  const ClientState({
    this.brand,
    this.clientId,
    this.deletionPolicy,
    this.displayName,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': ?brand,
      'clientId': ?clientId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'secret': ?secret,
    };
  }

  factory ClientState.fromMap(Map<String, dynamic> map) {
    return ClientState(
      brand: (() { final guardedValue = map['brand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
