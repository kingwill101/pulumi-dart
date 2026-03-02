// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets the workflow trigger callback URL query parameters.
class WorkflowTriggerListCallbackUrlQueriesResponse {
  /// The api version.
  final pulumi.Input<String>? apiVersion;
  /// The SAS timestamp.
  final pulumi.Input<String>? se;
  /// The SAS signature.
  final pulumi.Input<String>? sig;
  /// The SAS permissions.
  final pulumi.Input<String>? sp;
  /// The SAS version.
  final pulumi.Input<String>? sv;

  /// Creates a new [WorkflowTriggerListCallbackUrlQueriesResponse].
  /// [apiVersion] The api version.
  /// [se] The SAS timestamp.
  /// [sig] The SAS signature.
  /// [sp] The SAS permissions.
  /// [sv] The SAS version.
  WorkflowTriggerListCallbackUrlQueriesResponse({
    this.apiVersion,
    this.se,
    this.sig,
    this.sp,
    this.sv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'se': ?se,
      'sig': ?sig,
      'sp': ?sp,
      'sv': ?sv,
    };
  }

  factory WorkflowTriggerListCallbackUrlQueriesResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowTriggerListCallbackUrlQueriesResponse(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      se: map['se'] == null ? null : (map['se']! as String).input(),
      sig: map['sig'] == null ? null : (map['sig']! as String).input(),
      sp: map['sp'] == null ? null : (map['sp']! as String).input(),
      sv: map['sv'] == null ? null : (map['sv']! as String).input(),
    );
  }
}

