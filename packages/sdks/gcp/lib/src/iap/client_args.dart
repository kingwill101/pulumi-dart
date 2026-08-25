// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_client_client_args_doc}
/// The set of arguments for Client.
/// {@endtemplate}
/// {@macro pulumi_iap_client_client_args_doc}
class ClientArgs {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String> brand;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String> displayName;

  /// Creates a new [ClientArgs].
  /// [brand] Identifier of the brand to which this client
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Human-friendly name given to the OAuth client.
  const ClientArgs({
    required this.brand,
    this.deletionPolicy,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
    };
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      brand: pulumi.Input.fromValue(map['brand'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
    );
  }
}
