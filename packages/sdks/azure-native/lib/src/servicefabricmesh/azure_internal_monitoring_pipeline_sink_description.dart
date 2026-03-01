// ignore_for_file: unused_element, unnecessary_cast


/// Diagnostics settings for Geneva.
class AzureInternalMonitoringPipelineSinkDescription {
  /// Azure Internal monitoring pipeline account.
  final String? accountName;
  /// Azure Internal monitoring pipeline autokey associated with the certificate.
  final String? autoKeyConfigUrl;
  /// A description of the sink.
  final String? description;
  /// Azure Internal monitoring agent fluentd configuration.
  final dynamic fluentdConfigUrl;
  /// The kind of DiagnosticsSink.
  /// Expected value is 'AzureInternalMonitoringPipeline'.
  final String kind;
  /// Azure Internal monitoring agent configuration.
  final String? maConfigUrl;
  /// Name of the sink. This value is referenced by DiagnosticsReferenceDescription
  final String? name;
  /// Azure Internal monitoring pipeline account namespace.
  final String? namespace;

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
      accountName: map['accountName'] == null ? null : map['accountName'] as String,
      autoKeyConfigUrl: map['autoKeyConfigUrl'] == null ? null : map['autoKeyConfigUrl'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      fluentdConfigUrl: map['fluentdConfigUrl'] == null ? null : map['fluentdConfigUrl'],
      kind: map['kind'] as String,
      maConfigUrl: map['maConfigUrl'] == null ? null : map['maConfigUrl'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

