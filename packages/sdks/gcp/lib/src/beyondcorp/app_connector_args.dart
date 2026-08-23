// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_principal_info.dart';

/// {@template pulumi_beyondcorp_app_connector_app_connector_args_doc}
/// The set of arguments for AppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_app_connector_app_connector_args_doc}
class AppConnectorArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An arbitrary user-provided name for the AppConnector.
  final pulumi.Input<String>? displayName;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the AppConnector.
  final pulumi.Input<String>? name;
  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  final pulumi.Input<AppConnectorPrincipalInfo> principalInfo;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the AppConnector.
  final pulumi.Input<String>? region;

  /// Creates a new [AppConnectorArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] An arbitrary user-provided name for the AppConnector.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the AppConnector.
  const AppConnectorArgs({
    this.deletionPolicy,
    this.displayName,
    this.labels,
    this.name,
    required this.principalInfo,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'principalInfo': pulumi.Input.mapInputValue<AppConnectorPrincipalInfo, Map<String, dynamic>>(principalInfo, (value) => value.toMap()),
      'project': ?project,
      'region': ?region,
    };
  }

  factory AppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectorArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalInfo: pulumi.Input.fromValue(AppConnectorPrincipalInfo.fromMap((map['principalInfo']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
