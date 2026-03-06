// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_psc_instance_config_psc_auto_connection.dart';
import 'get_instance_psc_instance_config_psc_interface_config.dart';

class GetInstancePscInstanceConfig {
  /// List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// These should be specified as project numbers only.
  final pulumi.Input<List<String>> allowedConsumerProjects;
  /// Configurations for setting up PSC service automation.
  final pulumi.Input<List<GetInstancePscInstanceConfigPscAutoConnection>> pscAutoConnections;
  /// The DNS name of the instance for PSC connectivity.
  /// Name convention: &lt;uid&gt;.&lt;uid&gt;.&lt;region&gt;.alloydb-psc.goog
  final pulumi.Input<String> pscDnsName;
  /// Configurations for setting up PSC interfaces attached to the instance
  /// which are used for outbound connectivity. Currently, AlloyDB supports only 0 or 1 PSC interface.
  final pulumi.Input<List<GetInstancePscInstanceConfigPscInterfaceConfig>> pscInterfaceConfigs;
  /// The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  /// The name of the resource will be in the format of
  /// 'projects/&lt;alloydb-tenant-project-number&gt;/regions/&lt;region-name&gt;/serviceAttachments/&lt;service-attachment-name&gt;'
  final pulumi.Input<String> serviceAttachmentLink;

  /// Creates a new [GetInstancePscInstanceConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// [pscAutoConnections] Configurations for setting up PSC service automation.
  /// [pscDnsName] The DNS name of the instance for PSC connectivity.
  /// [pscInterfaceConfigs] Configurations for setting up PSC interfaces attached to the instance
  /// [serviceAttachmentLink] The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  const GetInstancePscInstanceConfig({
    required this.allowedConsumerProjects,
    required this.pscAutoConnections,
    required this.pscDnsName,
    required this.pscInterfaceConfigs,
    required this.serviceAttachmentLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': allowedConsumerProjects,
      'pscAutoConnections': pulumi.Input.mapInputValue<List<GetInstancePscInstanceConfigPscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<GetInstancePscInstanceConfigPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscDnsName': pscDnsName,
      'pscInterfaceConfigs': pulumi.Input.mapInputValue<List<GetInstancePscInstanceConfigPscInterfaceConfig>, List<Map<String, dynamic>>>(pscInterfaceConfigs, (value) => pulumi.Input.encodeList<GetInstancePscInstanceConfigPscInterfaceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAttachmentLink': serviceAttachmentLink,
    };
  }

  factory GetInstancePscInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePscInstanceConfig(
      allowedConsumerProjects: pulumi.Input.fromValue((map['allowedConsumerProjects'] as List).cast<String>()),
      pscAutoConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePscInstanceConfigPscAutoConnection>(map['pscAutoConnections']!, (value) => GetInstancePscInstanceConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))),
      pscDnsName: pulumi.Input.fromValue(map['pscDnsName'] as String),
      pscInterfaceConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstancePscInstanceConfigPscInterfaceConfig>(map['pscInterfaceConfigs']!, (value) => GetInstancePscInstanceConfigPscInterfaceConfig.fromMap((value as Map).cast<String, dynamic>()))),
      serviceAttachmentLink: pulumi.Input.fromValue(map['serviceAttachmentLink'] as String),
    );
  }
}

