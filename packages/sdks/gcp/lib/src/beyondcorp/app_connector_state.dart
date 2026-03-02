// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_principal_info.dart';

/// Input properties used for looking up and filtering AppConnector resources.
class AppConnectorState {
  /// An arbitrary user-provided name for the AppConnector.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the AppConnector.
  final pulumi.Input<String>? name;
  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  final pulumi.Input<AppConnectorPrincipalInfo>? principalInfo;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The region of the AppConnector.
  final pulumi.Input<String>? region;
  /// Represents the different states of a AppConnector.
  final pulumi.Input<String>? state;

  /// Creates a new [AppConnectorState].
  /// [displayName] An arbitrary user-provided name for the AppConnector.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [region] The region of the AppConnector.
  /// [state] Represents the different states of a AppConnector.
  AppConnectorState({
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
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      principalInfo: map['principalInfo'] == null ? null : (AppConnectorPrincipalInfo.fromMap((map['principalInfo'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

