// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_psc_instance_config_psc_auto_connection.dart';
import 'instance_psc_instance_config_psc_interface_config.dart';

class InstancePscInstanceConfig {
  /// List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// These should be specified as project numbers only.
  final pulumi.Input<List<String>>? allowedConsumerProjects;
  /// Configurations for setting up PSC service automation.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscInstanceConfigPscAutoConnection>>? pscAutoConnections;
  /// (Output)
  /// The DNS name of the instance for PSC connectivity.
  /// Name convention: &lt;uid&gt;.&lt;uid&gt;.&lt;region&gt;.alloydb-psc.goog
  final pulumi.Input<String>? pscDnsName;
  /// Configurations for setting up PSC interfaces attached to the instance
  /// which are used for outbound connectivity. Currently, AlloyDB supports only 0 or 1 PSC interface.
  /// Structure is documented below.
  final pulumi.Input<List<InstancePscInstanceConfigPscInterfaceConfig>>? pscInterfaceConfigs;
  /// (Output)
  /// The service attachment created when Private Service Connect (PSC) is enabled for the instance.
  /// The name of the resource will be in the format of
  /// `projects/&lt;alloydb-tenant-project-number&gt;/regions/&lt;region-name&gt;/serviceAttachments/&lt;service-attachment-name&gt;`
  final pulumi.Input<String>? serviceAttachmentLink;

  /// Creates a new [InstancePscInstanceConfig].
  /// [allowedConsumerProjects] List of consumer projects that are allowed to create PSC endpoints to service-attachments to this instance.
  /// [pscAutoConnections] Configurations for setting up PSC service automation.
  /// [pscDnsName] (Output)
  /// [pscInterfaceConfigs] Configurations for setting up PSC interfaces attached to the instance
  /// [serviceAttachmentLink] (Output)
  InstancePscInstanceConfig({
    this.allowedConsumerProjects,
    this.pscAutoConnections,
    this.pscDnsName,
    this.pscInterfaceConfigs,
    this.serviceAttachmentLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedConsumerProjects': ?allowedConsumerProjects,
      'pscAutoConnections': ?pulumi.Input.mapOptionalInputValue<List<InstancePscInstanceConfigPscAutoConnection>, List<Map<String, dynamic>>>(pscAutoConnections, (value) => pulumi.Input.encodeList<InstancePscInstanceConfigPscAutoConnection, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pscDnsName': ?pscDnsName,
      'pscInterfaceConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstancePscInstanceConfigPscInterfaceConfig>, List<Map<String, dynamic>>>(pscInterfaceConfigs, (value) => pulumi.Input.encodeList<InstancePscInstanceConfigPscInterfaceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceAttachmentLink': ?serviceAttachmentLink,
    };
  }

  factory InstancePscInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstancePscInstanceConfig(
      allowedConsumerProjects: (() { final guardedValue = map['allowedConsumerProjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pscAutoConnections: (() { final guardedValue = map['pscAutoConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePscInstanceConfigPscAutoConnection>(guardedValue, (value) => InstancePscInstanceConfigPscAutoConnection.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pscDnsName: (() { final guardedValue = map['pscDnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pscInterfaceConfigs: (() { final guardedValue = map['pscInterfaceConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePscInstanceConfigPscInterfaceConfig>(guardedValue, (value) => InstancePscInstanceConfigPscInterfaceConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceAttachmentLink: (() { final guardedValue = map['serviceAttachmentLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

