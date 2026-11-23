// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ftp_server_external_config.dart';
import 'ftp_server_internal_config.dart';

/// Input properties used for looking up and filtering FtpServer resources.
class FtpServerState {
  /// The access type for this SFTP server. Possible values: INTERNAL, EXTERNAL
  /// Possible values are: `INTERNAL`, `EXTERNAL`.
  final pulumi.Input<String?>? accessType;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A display name for the server.
  final pulumi.Input<String?>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// Configuration for external access type SFTP servers.
  /// Structure is documented below.
  final pulumi.Input<FtpServerExternalConfig?>? externalConfig;
  /// Configuration for internal access type SFTP servers.
  /// Structure is documented below.
  final pulumi.Input<FtpServerInternalConfig?>? internalConfig;
  /// A set of key/value label pairs to assign to the Storage FTP Server.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location (region) of the Storage FTP Server.
  final pulumi.Input<String?>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// A unique ID for the server. Must start with a lowercase letter, and end with a lowercase letter or number. Can contain lowercase letters, numbers, and hyphens. Maximum 30 characters.
  final pulumi.Input<String?>? serverId;
  /// The email address of the service agent associated with the SFTP server.
  final pulumi.Input<String?>? serviceAgent;
  /// The operational lifecycle state of the SFTP server.
  final pulumi.Input<String?>? state;

  /// Creates a new [FtpServerState].
  /// [accessType] The access type for this SFTP server. Possible values: INTERNAL, EXTERNAL
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A display name for the server.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [externalConfig] Configuration for external access type SFTP servers.
  /// [internalConfig] Configuration for internal access type SFTP servers.
  /// [labels] A set of key/value label pairs to assign to the Storage FTP Server.
  /// [location] The location (region) of the Storage FTP Server.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [serverId] A unique ID for the server. Must start with a lowercase letter, and end with a lowercase letter or number. Can contain lowercase letters, numbers, and hyphens. Maximum 30 characters.
  /// [serviceAgent] The email address of the service agent associated with the SFTP server.
  /// [state] The operational lifecycle state of the SFTP server.
  const FtpServerState({
    this.accessType,
    this.deletionPolicy,
    this.displayName,
    this.effectiveLabels,
    this.externalConfig,
    this.internalConfig,
    this.labels,
    this.location,
    this.project,
    this.pulumiLabels,
    this.serverId,
    this.serviceAgent,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessType': ?accessType,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'externalConfig': ?pulumi.Input.mapOptionalInputValue<FtpServerExternalConfig, Map<String, dynamic>>(externalConfig, (value) => value.toMap()),
      'internalConfig': ?pulumi.Input.mapOptionalInputValue<FtpServerInternalConfig, Map<String, dynamic>>(internalConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'serverId': ?serverId,
      'serviceAgent': ?serviceAgent,
      'state': ?state,
    };
  }

  factory FtpServerState.fromMap(Map<String, dynamic> map) {
    return FtpServerState(
      accessType: (() { final guardedValue = map['accessType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      externalConfig: (() { final guardedValue = map['externalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FtpServerExternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      internalConfig: (() { final guardedValue = map['internalConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FtpServerInternalConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      serverId: (() { final guardedValue = map['serverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAgent: (() { final guardedValue = map['serviceAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
