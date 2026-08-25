// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_principal_info.dart';

/// Input properties used for looking up and filtering AppConnector resources.
class AppConnectorState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An arbitrary user-provided name for the AppConnector.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// ID of the AppConnector.
  final pulumi.Input<String?>? name;
  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  final pulumi.Input<AppConnectorPrincipalInfo?>? principalInfo;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// The region of the AppConnector.
  final pulumi.Input<String?>? region;
  /// Represents the different states of a AppConnector.
  final pulumi.Input<String?>? state;

  /// Creates a new [AppConnectorState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] An arbitrary user-provided name for the AppConnector.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the AppConnector.
  /// [state] Represents the different states of a AppConnector.
  const AppConnectorState({
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.principalInfo,
    this.project,
    this.pulumiLabels,
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'principalInfo': ?pulumi.Input.mapOptionalInputValue<AppConnectorPrincipalInfo, Map<String, dynamic>>(principalInfo, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'region': ?region,
      'state': ?state,
    };
  }

  factory AppConnectorState.fromMap(Map<String, dynamic> map) {
    return AppConnectorState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalInfo: (() { final guardedValue = map['principalInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppConnectorPrincipalInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
