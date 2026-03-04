// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gkecluster_dns_v1beta2.dart';
import 'response_policy_network_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_response_policy_args_doc}
/// The set of arguments for ResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_response_policy_args_doc}
class ResponsePolicyArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;

  /// User-provided description for this Response Policy.
  final pulumi.Input<String>? description;

  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final pulumi.Input<List<ResponsePolicyGKEClusterDnsV1beta2>>? gkeClusters;
  final pulumi.Input<String>? kind;

  /// User labels.
  final pulumi.Input<Map<String, String>>? labels;

  /// List of network names specifying networks to which this policy is applied.
  final pulumi.Input<List<ResponsePolicyNetworkDnsV1beta2>>? networks;
  final pulumi.Input<String>? project;

  /// User assigned name for this Response Policy.
  final pulumi.Input<String>? responsePolicyName;

  /// Creates a new [ResponsePolicyArgs].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [description] User-provided description for this Response Policy.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters to which this response policy is applied.
  /// [kind] Optional.
  /// [labels] User labels.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [project] Optional.
  /// [responsePolicyName] User assigned name for this Response Policy.
  ResponsePolicyArgs({
    this.clientOperationId,
    this.description,
    this.gkeClusters,
    this.kind,
    this.labels,
    this.networks,
    this.project,
    this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'description': ?description,
      'gkeClusters':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResponsePolicyGKEClusterDnsV1beta2>,
            List<Map<String, dynamic>>
          >(
            gkeClusters,
            (value) =>
                pulumi.Input.encodeList<
                  ResponsePolicyGKEClusterDnsV1beta2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'kind': ?kind,
      'labels': ?labels,
      'networks':
          ?pulumi.Input.mapOptionalInputValue<
            List<ResponsePolicyNetworkDnsV1beta2>,
            List<Map<String, dynamic>>
          >(
            networks,
            (value) =>
                pulumi.Input.encodeList<
                  ResponsePolicyNetworkDnsV1beta2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'responsePolicyName': ?responsePolicyName,
    };
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      clientOperationId: (() {
        final guardedValue = map['clientOperationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeClusters: (() {
        final guardedValue = map['gkeClusters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResponsePolicyGKEClusterDnsV1beta2>(
            guardedValue,
            (value) => ResponsePolicyGKEClusterDnsV1beta2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
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
      networks: (() {
        final guardedValue = map['networks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ResponsePolicyNetworkDnsV1beta2>(
            guardedValue,
            (value) => ResponsePolicyNetworkDnsV1beta2.fromMap(
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
      responsePolicyName: (() {
        final guardedValue = map['responsePolicyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
