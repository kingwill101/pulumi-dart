// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_checker_state.dart';

/// An internal checker allows Uptime checks to run on private/internal GCP resources.
class InternalChecker {
  /// The checker's human-readable name. The display name should be unique within a Cloud Monitoring Metrics Scope in order to make it easier to identify; however, uniqueness is not enforced.
  final pulumi.Input<String>? displayName;
  /// The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.
  final pulumi.Input<String>? gcpZone;
  /// A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the Uptime check config associated with the internal checker.
  final pulumi.Input<String>? name;
  /// The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: "default").
  final pulumi.Input<String>? network;
  /// The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope project.
  final pulumi.Input<String>? peerProjectId;
  /// The current operational state of the internal checker.
  final pulumi.Input<InternalCheckerState>? state;

  /// Creates a new [InternalChecker].
  /// [displayName] The checker's human-readable name. The display name should be unique within a Cloud Monitoring Metrics Scope in order to make it easier to identify; however, uniqueness is not enforced.
  /// [gcpZone] The GCP zone the Uptime check should egress from. Only respected for internal Uptime checks, where internal_network is specified.
  /// [name] A unique resource name for this InternalChecker. The format is: projects/[PROJECT_ID_OR_NUMBER]/internalCheckers/[INTERNAL_CHECKER_ID] [PROJECT_ID_OR_NUMBER] is the Cloud Monitoring Metrics Scope project for the Uptime check config associated with the internal checker.
  /// [network] The GCP VPC network (https://cloud.google.com/vpc/docs/vpc) where the internal resource lives (ex: "default").
  /// [peerProjectId] The GCP project ID where the internal checker lives. Not necessary the same as the Metrics Scope project.
  /// [state] The current operational state of the internal checker.
  InternalChecker({
    this.displayName,
    this.gcpZone,
    this.name,
    this.network,
    this.peerProjectId,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'gcpZone': ?gcpZone,
      'name': ?name,
      'network': ?network,
      'peerProjectId': ?peerProjectId,
      'state': ?pulumi.Input.mapOptionalInputValue<InternalCheckerState, String>(state, (value) => value.wireValue),
    };
  }

  factory InternalChecker.fromMap(Map<String, dynamic> map) {
    return InternalChecker(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gcpZone: (() { final guardedValue = map['gcpZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerProjectId: (() { final guardedValue = map['peerProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InternalCheckerState.fromValue(guardedValue as String)); })(),
    );
  }
}

