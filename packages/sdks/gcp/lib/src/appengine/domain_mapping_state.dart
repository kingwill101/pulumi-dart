// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_mapping_resource_record.dart';
import 'domain_mapping_ssl_settings.dart';

/// Input properties used for looking up and filtering DomainMapping resources.
class DomainMappingState {
  /// Relative name of the domain serving the application. Example: example.com.
  final pulumi.Input<String>? domainName;
  /// Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  final pulumi.Input<String>? name;
  /// Whether the domain creation should override any existing mappings for this domain.
  /// By default, overrides are rejected.
  /// Default value is `STRICT`.
  /// Possible values are: `STRICT`, `OVERRIDE`.
  final pulumi.Input<String>? overrideStrategy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// configuration in order to serve the application via this domain mapping.
  /// Structure is documented below.
  final pulumi.Input<List<DomainMappingResourceRecord>>? resourceRecords;
  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  /// Structure is documented below.
  final pulumi.Input<DomainMappingSslSettings>? sslSettings;

  /// Creates a new [DomainMappingState].
  /// [domainName] Relative name of the domain serving the application. Example: example.com.
  /// [name] Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.
  /// [overrideStrategy] Whether the domain creation should override any existing mappings for this domain.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceRecords] The resource records required to configure this domain mapping. These records must be added to the domain's DNS
  /// [sslSettings] SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  DomainMappingState({
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? overrideStrategy,
    pulumi.Output<String>? project,
    pulumi.Output<List<DomainMappingResourceRecord>>? resourceRecords,
    pulumi.Output<DomainMappingSslSettings>? sslSettings,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      overrideStrategy = pulumi.Input.asOptionalInput<String>(overrideStrategy),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceRecords = pulumi.Input.asOptionalInput<List<DomainMappingResourceRecord>>(resourceRecords),
      sslSettings = pulumi.Input.asOptionalInput<DomainMappingSslSettings>(sslSettings);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      overrideStrategy: map['overrideStrategy'] == null ? null : pulumi.Output.create<String>(map['overrideStrategy'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceRecords: map['resourceRecords'] == null ? null : pulumi.Output.create<List<DomainMappingResourceRecord>>(pulumi.Input.decodeList<DomainMappingResourceRecord>(map['resourceRecords'], (value) => DomainMappingResourceRecord.fromMap((value as Map).cast<String, dynamic>()))),
      sslSettings: map['sslSettings'] == null ? null : pulumi.Output.create<DomainMappingSslSettings>(DomainMappingSslSettings.fromMap((map['sslSettings'] as Map).cast<String, dynamic>())),
    );
  }
}

