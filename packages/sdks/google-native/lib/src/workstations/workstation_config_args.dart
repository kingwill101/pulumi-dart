// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container.dart';
import 'customer_encryption_key.dart';
import 'host.dart';
import 'persistent_directory.dart';
import 'readiness_check.dart';

/// {@template pulumi_workstations_v1_workstation_config_args_doc}
/// The set of arguments for WorkstationConfig.
/// {@endtemplate}
/// {@macro pulumi_workstations_v1_workstation_config_args_doc}
class WorkstationConfigArgs {
  /// Optional. Client-specified annotations.
  final pulumi.Input<Map<String, String>>? annotations;

  /// Optional. Container that runs upon startup for each workstation using this workstation configuration.
  final pulumi.Input<Container>? container;

  /// Optional. Human-readable name for this workstation configuration.
  final pulumi.Input<String>? displayName;

  /// Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  final pulumi.Input<CustomerEncryptionKey>? encryptionKey;

  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;

  /// Optional. Runtime host for the workstation.
  final pulumi.Input<Host>? host;

  /// Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  final pulumi.Input<String>? idleTimeout;

  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Identifier. Full name of this workstation configuration.
  final pulumi.Input<String>? name;

  /// Optional. Directories to persist across workstation sessions.
  final pulumi.Input<List<PersistentDirectory>>? persistentDirectories;
  final pulumi.Input<String>? project;

  /// Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  final pulumi.Input<List<ReadinessCheck>>? readinessChecks;

  /// Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  final pulumi.Input<List<String>>? replicaZones;

  /// Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  final pulumi.Input<String>? runningTimeout;
  final pulumi.Input<String> workstationClusterId;

  /// Required. ID to use for the workstation configuration.
  final pulumi.Input<String> workstationConfigId;

  /// Creates a new [WorkstationConfigArgs].
  /// [annotations] Optional. Client-specified annotations.
  /// [container] Optional. Container that runs upon startup for each workstation using this workstation configuration.
  /// [displayName] Optional. Human-readable name for this workstation configuration.
  /// [encryptionKey] Immutable. Encrypts resources of this workstation configuration using a customer-managed encryption key (CMEK). If specified, the boot disk of the Compute Engine instance and the persistent disk are encrypted using this encryption key. If this field is not set, the disks are encrypted using a generated key. Customer-managed encryption keys do not protect disk metadata. If the customer-managed encryption key is rotated, when the workstation instance is stopped, the system attempts to recreate the persistent disk with the new version of the key. Be sure to keep older versions of the key until the persistent disk is recreated. Otherwise, data on the persistent disk might be lost. If the encryption key is revoked, the workstation session automatically stops within 7 hours. Immutable after the workstation configuration is created.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [host] Optional. Runtime host for the workstation.
  /// [idleTimeout] Optional. Number of seconds to wait before automatically stopping a workstation after it last received user traffic. A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration should never time out due to idleness. Provide [duration](https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#duration) terminated by `s` for seconds—for example, `"7200s"` (2 hours). The default is `"1200s"` (20 minutes).
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation configuration and that are also propagated to the underlying Compute Engine resources.
  /// [location] Optional.
  /// [name] Identifier. Full name of this workstation configuration.
  /// [persistentDirectories] Optional. Directories to persist across workstation sessions.
  /// [project] Optional.
  /// [readinessChecks] Optional. Readiness checks to perform when starting a workstation using this workstation configuration. Mark a workstation as running only after all specified readiness checks return 200 status codes.
  /// [replicaZones] Optional. Immutable. Specifies the zones used to replicate the VM and disk resources within the region. If set, exactly two zones within the workstation cluster's region must be specified—for example, `['us-central1-a', 'us-central1-f']`. If this field is empty, two default zones within the region are used. Immutable after the workstation configuration is created.
  /// [runningTimeout] Optional. Number of seconds that a workstation can run until it is automatically shut down. We recommend that workstations be shut down daily to reduce costs and so that security updates can be applied upon restart. The idle_timeout and running_timeout fields are independent of each other. Note that the running_timeout field shuts down VMs after the specified time, regardless of whether or not the VMs are idle. Provide duration terminated by `s` for seconds—for example, `"54000s"` (15 hours). Defaults to `"43200s"` (12 hours). A value of `"0s"` indicates that workstations using this configuration should never time out. If encryption_key is set, it must be greater than `"0s"` and less than `"86400s"` (24 hours). Warning: A value of `"0s"` indicates that Cloud Workstations VMs created with this configuration have no maximum running time. This is strongly discouraged because you incur costs and will not pick up security updates.
  /// [workstationClusterId] Required.
  /// [workstationConfigId] Required. ID to use for the workstation configuration.
  WorkstationConfigArgs({
    this.annotations,
    this.container,
    this.displayName,
    this.encryptionKey,
    this.etag,
    this.host,
    this.idleTimeout,
    this.labels,
    this.location,
    this.name,
    this.persistentDirectories,
    this.project,
    this.readinessChecks,
    this.replicaZones,
    this.runningTimeout,
    required this.workstationClusterId,
    required this.workstationConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'container':
          ?pulumi.Input.mapOptionalInputValue<Container, Map<String, dynamic>>(
            container,
            (value) => value.toMap(),
          ),
      'displayName': ?displayName,
      'encryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            CustomerEncryptionKey,
            Map<String, dynamic>
          >(encryptionKey, (value) => value.toMap()),
      'etag': ?etag,
      'host': ?pulumi.Input.mapOptionalInputValue<Host, Map<String, dynamic>>(
        host,
        (value) => value.toMap(),
      ),
      'idleTimeout': ?idleTimeout,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'persistentDirectories':
          ?pulumi.Input.mapOptionalInputValue<
            List<PersistentDirectory>,
            List<Map<String, dynamic>>
          >(
            persistentDirectories,
            (value) =>
                pulumi.Input.encodeList<
                  PersistentDirectory,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'readinessChecks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ReadinessCheck>,
            List<Map<String, dynamic>>
          >(
            readinessChecks,
            (value) =>
                pulumi.Input.encodeList<ReadinessCheck, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'replicaZones': ?replicaZones,
      'runningTimeout': ?runningTimeout,
      'workstationClusterId': workstationClusterId,
      'workstationConfigId': workstationConfigId,
    };
  }

  factory WorkstationConfigArgs.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigArgs(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      container: (() {
        final guardedValue = map['container'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Container.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptionKey: (() {
        final guardedValue = map['encryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CustomerEncryptionKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Host.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      idleTimeout: (() {
        final guardedValue = map['idleTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      persistentDirectories: (() {
        final guardedValue = map['persistentDirectories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PersistentDirectory>(
            guardedValue,
            (value) => PersistentDirectory.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readinessChecks: (() {
        final guardedValue = map['readinessChecks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ReadinessCheck>(
            guardedValue,
            (value) =>
                ReadinessCheck.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      replicaZones: (() {
        final guardedValue = map['replicaZones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      runningTimeout: (() {
        final guardedValue = map['runningTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workstationClusterId: pulumi.Input.fromValue(
        map['workstationClusterId'] as String,
      ),
      workstationConfigId: pulumi.Input.fromValue(
        map['workstationConfigId'] as String,
      ),
    );
  }
}
