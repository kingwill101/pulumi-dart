import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_cloud_logging_config_response_dns_v1beta2.dart';
import 'managed_zone_dns_sec_config_response_dns_v1beta2.dart';
import 'managed_zone_dns_v1beta2_args.dart';
import 'managed_zone_forwarding_config_response_dns_v1beta2.dart';
import 'managed_zone_peering_config_response_dns_v1beta2.dart';
import 'managed_zone_private_visibility_config_response_dns_v1beta2.dart';
import 'managed_zone_reverse_lookup_config_response_dns_v1beta2.dart';
import 'managed_zone_service_directory_config_response_dns_v1beta2.dart';

/// Creates a new ManagedZone.
class ManagedZoneDnsV1beta2 extends pulumi.CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final pulumi.Output<String?> clientOperationId;
  late final pulumi.Output<ManagedZoneCloudLoggingConfigResponseDnsV1beta2>
  cloudLoggingConfig;

  /// The time that this resource was created on the server. This is in RFC3339 text format. Output only.
  late final pulumi.Output<String> creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.
  late final pulumi.Output<String> description;

  /// The DNS name of this managed zone, for instance "example.com.".
  late final pulumi.Output<String> dnsName;

  /// DNSSEC configuration.
  late final pulumi.Output<ManagedZoneDnsSecConfigResponseDnsV1beta2>
  dnssecConfig;

  /// The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.
  late final pulumi.Output<ManagedZoneForwardingConfigResponseDnsV1beta2>
  forwardingConfig;
  late final pulumi.Output<String> kind;

  /// User labels.
  late final pulumi.Output<Map<String, String>> labels;

  /// User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.
  late final pulumi.Output<String> name;

  /// Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.
  late final pulumi.Output<String> nameServerSet;

  /// Delegate your managed_zone to these virtual name servers; defined by the server (output only)
  late final pulumi.Output<List<String>> nameServers;

  /// The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.
  late final pulumi.Output<ManagedZonePeeringConfigResponseDnsV1beta2>
  peeringConfig;

  /// For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.
  late final pulumi.Output<ManagedZonePrivateVisibilityConfigResponseDnsV1beta2>
  privateVisibilityConfig;
  late final pulumi.Output<String> project;

  /// The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.
  late final pulumi.Output<ManagedZoneReverseLookupConfigResponseDnsV1beta2>
  reverseLookupConfig;

  /// This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.
  late final pulumi.Output<ManagedZoneServiceDirectoryConfigResponseDnsV1beta2>
  serviceDirectoryConfig;

  /// The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.
  late final pulumi.Output<String> visibility;

  /// Creates a new [ManagedZoneDnsV1beta2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedZoneDnsV1beta2]. {@macro pulumi_dns_v1beta2_managed_zone_dns_v1beta2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedZoneDnsV1beta2(
    String name, {
    ManagedZoneDnsV1beta2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:dns/v1beta2:ManagedZone',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientOperationId = registerOutput<String?>('clientOperationId');
    cloudLoggingConfig =
        registerOutput<ManagedZoneCloudLoggingConfigResponseDnsV1beta2>(
          'cloudLoggingConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedZoneCloudLoggingConfigResponseDnsV1beta2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    creationTime = registerOutput<String>('creationTime');
    description = registerOutput<String>('description');
    dnsName = registerOutput<String>('dnsName');
    dnssecConfig = registerOutput<ManagedZoneDnsSecConfigResponseDnsV1beta2>(
      'dnssecConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedZoneDnsSecConfigResponseDnsV1beta2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    forwardingConfig =
        registerOutput<ManagedZoneForwardingConfigResponseDnsV1beta2>(
          'forwardingConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedZoneForwardingConfigResponseDnsV1beta2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    kind = registerOutput<String>('kind');
    labels = registerOutput<Map<String, String>>('labels');
    this.name = registerOutput<String>('name');
    nameServerSet = registerOutput<String>('nameServerSet');
    nameServers = registerOutput<List<String>>('nameServers');
    peeringConfig = registerOutput<ManagedZonePeeringConfigResponseDnsV1beta2>(
      'peeringConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ManagedZonePeeringConfigResponseDnsV1beta2.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    privateVisibilityConfig =
        registerOutput<ManagedZonePrivateVisibilityConfigResponseDnsV1beta2>(
          'privateVisibilityConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedZonePrivateVisibilityConfigResponseDnsV1beta2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    project = registerOutput<String>('project');
    reverseLookupConfig =
        registerOutput<ManagedZoneReverseLookupConfigResponseDnsV1beta2>(
          'reverseLookupConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedZoneReverseLookupConfigResponseDnsV1beta2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    serviceDirectoryConfig =
        registerOutput<ManagedZoneServiceDirectoryConfigResponseDnsV1beta2>(
          'serviceDirectoryConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ManagedZoneServiceDirectoryConfigResponseDnsV1beta2.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    visibility = registerOutput<String>('visibility');
  }
}
