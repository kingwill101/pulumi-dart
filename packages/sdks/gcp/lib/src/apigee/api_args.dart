// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_api_api_args_doc}
/// The set of arguments for Api.
/// {@endtemplate}
/// {@macro pulumi_apigee_api_api_args_doc}
class ApiArgs {
  /// Path to the config zip bundle.
  final pulumi.Input<String> configBundle;
  /// (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String>? deletionPolicy;
  /// (Optional) Detect changes to local config bundle file or changes made outside of Terraform. MD5 hash of the data, encoded using base64. Hash is automatically computed without need for user input.
  final pulumi.Input<String>? detectMd5hash;
  /// The ID of the API proxy.
  final pulumi.Input<String>? name;
  /// The Apigee Organization name associated with the Apigee instance.
  final pulumi.Input<String> orgId;

  /// Creates a new [ApiArgs].
  /// [configBundle] Path to the config zip bundle.
  /// [deletionPolicy] (Optional) Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [detectMd5hash] (Optional) Detect changes to local config bundle file or changes made outside of Terraform. MD5 hash of the data, encoded using base64. Hash is automatically computed without need for user input.
  /// [name] The ID of the API proxy.
  /// [orgId] The Apigee Organization name associated with the Apigee instance.
  const ApiArgs({
    required this.configBundle,
    this.deletionPolicy,
    this.detectMd5hash,
    this.name,
    required this.orgId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configBundle': configBundle,
      'deletionPolicy': ?deletionPolicy,
      'detectMd5hash': ?detectMd5hash,
      'name': ?name,
      'orgId': orgId,
    };
  }

  factory ApiArgs.fromMap(Map<String, dynamic> map) {
    return ApiArgs(
      configBundle: pulumi.Input.fromValue(map['configBundle'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      detectMd5hash: (() { final guardedValue = map['detectMd5hash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: pulumi.Input.fromValue(map['orgId'] as String),
    );
  }
}
