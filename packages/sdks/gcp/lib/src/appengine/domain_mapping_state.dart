// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_resource_record.dart';
import 'domain_mapping_ssl_settings.dart';

/// Input properties used for looking up and filtering DomainMapping resources.
class DomainMappingState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String?>? domainName;
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final pulumi.Input<String?>? name;
  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  final pulumi.Input<String?>? overrideStrategy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// configuration in order to serve the application via this domain mapping.
  /// Structure is documented below.
  final pulumi.Input<List<DomainMappingResourceRecord>?>? resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSslSettings?>? sslSettings;

  /// Creates a new [DomainMappingState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [domainName] Relative name of the domain serving the application. Example: example.com.
  /// [name] Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  const DomainMappingState({
    this.deletionPolicy,
    this.domainName,
    this.name,
    this.overrideStrategy,
    this.project,
    this.resourceRecords,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'domainName': ?domainName,
      'name': ?name,
      'overrideStrategy': ?overrideStrategy,
      'project': ?project,
      'resourceRecords': ?pulumi.Input.mapOptionalInputValue<List<DomainMappingResourceRecord>, List<Map<String, dynamic>>>(resourceRecords, (value) => pulumi.Input.encodeList<DomainMappingResourceRecord, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sslSettings': ?pulumi.Input.mapOptionalInputValue<DomainMappingSslSettings, Map<String, dynamic>>(sslSettings, (value) => value.toMap()),
    };
  }

  factory DomainMappingState.fromMap(Map<String, dynamic> map) {
    return DomainMappingState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideStrategy: (() { final guardedValue = map['overrideStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecords: (() { final guardedValue = map['resourceRecords']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainMappingResourceRecord>(guardedValue, (value) => DomainMappingResourceRecord.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sslSettings: (() { final guardedValue = map['sslSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainMappingSslSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
