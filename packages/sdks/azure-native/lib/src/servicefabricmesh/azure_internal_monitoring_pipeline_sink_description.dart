// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Diagnostics settings for Geneva.
class AzureInternalMonitoringPipelineSinkDescription {
  /// Azure Internal monitoring pipeline account.
  final pulumi.Input<String>? accountName;
  /// Azure Internal monitoring pipeline autokey associated with the certificate.
  final pulumi.Input<String>? autoKeyConfigUrl;
  /// A description of the sink.
  final pulumi.Input<String>? description;
  /// Azure Internal monitoring agent fluentd configuration.
  final pulumi.Input<dynamic>? fluentdConfigUrl;
  /// The kind of DiagnosticsSink.
  /// Expected value is 'AzureInternalMonitoringPipeline'.
  final pulumi.Input<String> kind;
  /// Azure Internal monitoring agent configuration.
  final pulumi.Input<String>? maConfigUrl;
  /// Name of the sink. This value is referenced by DiagnosticsReferenceDescription
  final pulumi.Input<String>? name;
  /// Azure Internal monitoring pipeline account namespace.
  final pulumi.Input<String>? namespace;

  /// Creates a new [AzureInternalMonitoringPipelineSinkDescription].
  /// [accountName] Azure Internal monitoring pipeline account.
  /// [autoKeyConfigUrl] Azure Internal monitoring pipeline autokey associated with the certificate.
  /// [description] A description of the sink.
  /// [fluentdConfigUrl] Azure Internal monitoring agent fluentd configuration.
  /// [kind] The kind of DiagnosticsSink.
  /// [maConfigUrl] Azure Internal monitoring agent configuration.
  /// [name] Name of the sink. This value is referenced by DiagnosticsReferenceDescription
  /// [namespace] Azure Internal monitoring pipeline account namespace.
  AzureInternalMonitoringPipelineSinkDescription({
    this.accountName,
    this.autoKeyConfigUrl,
    this.description,
    this.fluentdConfigUrl,
    required this.kind,
    this.maConfigUrl,
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'autoKeyConfigUrl': ?autoKeyConfigUrl,
      'description': ?description,
      'fluentdConfigUrl': ?fluentdConfigUrl,
      'kind': kind,
      'maConfigUrl': ?maConfigUrl,
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory AzureInternalMonitoringPipelineSinkDescription.fromMap(Map<String, dynamic> map) {
    return AzureInternalMonitoringPipelineSinkDescription(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      autoKeyConfigUrl: map['autoKeyConfigUrl'] == null ? null : (map['autoKeyConfigUrl'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fluentdConfigUrl: map['fluentdConfigUrl'] == null ? null : (map['fluentdConfigUrl']).input(),
      kind: (map['kind'] as String).input(),
      maConfigUrl: map['maConfigUrl'] == null ? null : (map['maConfigUrl'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}

