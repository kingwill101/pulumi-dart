// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddos_settings.dart';
import 'extended_location.dart';
import 'ip_tag.dart';
import 'nat_gateway_network.dart';
import 'public_ipaddress_dns_settings.dart';
import 'public_ipaddress_network.dart';
import 'public_ipaddress_sku.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_public_ipaddress_args_doc}
/// The set of arguments for PublicIPAddress.
/// {@endtemplate}
/// {@macro pulumi_network_public_ipaddress_args_doc}
class PublicIPAddressArgs {
  /// The DDoS protection custom policy associated with the public IP address.
  final pulumi.Input<DdosSettings>? ddosSettings;
  /// Specify what happens to the public IP address when the VM using it is deleted
  final pulumi.Input<String>? deleteOption;
  /// The FQDN of the DNS record associated with the public IP address.
  final pulumi.Input<PublicIPAddressDnsSettings>? dnsSettings;
  /// The extended location of the public ip address.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The idle timeout of the public IP address.
  final pulumi.Input<int>? idleTimeoutInMinutes;
  /// The IP address associated with the public IP address resource.
  final pulumi.Input<String>? ipAddress;
  /// The list of tags associated with the public IP address.
  final pulumi.Input<List<IpTag>>? ipTags;
  /// The linked public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressNetwork>? linkedPublicIPAddress;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Migration phase of Public IP Address.
  final pulumi.Input<String>? migrationPhase;
  /// The NatGateway for the Public IP address.
  final pulumi.Input<NatGatewayNetwork>? natGateway;
  /// The public IP address version.
  final pulumi.Input<String>? publicIPAddressVersion;
  /// The public IP address allocation method.
  final pulumi.Input<String>? publicIPAllocationMethod;
  /// The Public IP Prefix this Public IP Address should be allocated from.
  final pulumi.Input<SubResource>? publicIPPrefix;
  /// The name of the public IP address.
  final pulumi.Input<String>? publicIpAddressName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The service public IP address of the public IP address resource.
  final pulumi.Input<PublicIPAddressNetwork>? servicePublicIPAddress;
  /// The public IP address SKU.
  final pulumi.Input<PublicIPAddressSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A list of availability zones denoting the IP allocated for the resource needs to come from.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [PublicIPAddressArgs].
  /// [ddosSettings] The DDoS protection custom policy associated with the public IP address.
  /// [deleteOption] Specify what happens to the public IP address when the VM using it is deleted
  /// [dnsSettings] The FQDN of the DNS record associated with the public IP address.
  /// [extendedLocation] The extended location of the public ip address.
  /// [id] Resource ID.
  /// [idleTimeoutInMinutes] The idle timeout of the public IP address.
  /// [ipAddress] The IP address associated with the public IP address resource.
  /// [ipTags] The list of tags associated with the public IP address.
  /// [linkedPublicIPAddress] The linked public IP address of the public IP address resource.
  /// [location] Resource location.
  /// [migrationPhase] Migration phase of Public IP Address.
  /// [natGateway] The NatGateway for the Public IP address.
  /// [publicIPAddressVersion] The public IP address version.
  /// [publicIPAllocationMethod] The public IP address allocation method.
  /// [publicIPPrefix] The Public IP Prefix this Public IP Address should be allocated from.
  /// [publicIpAddressName] The name of the public IP address.
  /// [resourceGroupName] The name of the resource group.
  /// [servicePublicIPAddress] The service public IP address of the public IP address resource.
  /// [sku] The public IP address SKU.
  /// [tags] Resource tags.
  /// [zones] A list of availability zones denoting the IP allocated for the resource needs to come from.
  PublicIPAddressArgs({
    pulumi.Output<DdosSettings>? ddosSettings,
    pulumi.Output<String>? deleteOption,
    pulumi.Output<PublicIPAddressDnsSettings>? dnsSettings,
    pulumi.Output<ExtendedLocation>? extendedLocation,
    pulumi.Output<String>? id,
    pulumi.Output<int>? idleTimeoutInMinutes,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<List<IpTag>>? ipTags,
    pulumi.Output<PublicIPAddressNetwork>? linkedPublicIPAddress,
    pulumi.Output<String>? location,
    pulumi.Output<String>? migrationPhase,
    pulumi.Output<NatGatewayNetwork>? natGateway,
    pulumi.Output<String>? publicIPAddressVersion,
    pulumi.Output<String>? publicIPAllocationMethod,
    pulumi.Output<SubResource>? publicIPPrefix,
    pulumi.Output<String>? publicIpAddressName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<PublicIPAddressNetwork>? servicePublicIPAddress,
    pulumi.Output<PublicIPAddressSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<String>>? zones,
  }) :
      ddosSettings = pulumi.Input.asOptionalInput<DdosSettings>(ddosSettings),
      deleteOption = pulumi.Input.asOptionalInput<String>(deleteOption),
      dnsSettings = pulumi.Input.asOptionalInput<PublicIPAddressDnsSettings>(dnsSettings),
      extendedLocation = pulumi.Input.asOptionalInput<ExtendedLocation>(extendedLocation),
      id = pulumi.Input.asOptionalInput<String>(id),
      idleTimeoutInMinutes = pulumi.Input.asOptionalInput<int>(idleTimeoutInMinutes),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      ipTags = pulumi.Input.asOptionalInput<List<IpTag>>(ipTags),
      linkedPublicIPAddress = pulumi.Input.asOptionalInput<PublicIPAddressNetwork>(linkedPublicIPAddress),
      location = pulumi.Input.asOptionalInput<String>(location),
      migrationPhase = pulumi.Input.asOptionalInput<String>(migrationPhase),
      natGateway = pulumi.Input.asOptionalInput<NatGatewayNetwork>(natGateway),
      publicIPAddressVersion = pulumi.Input.asOptionalInput<String>(publicIPAddressVersion),
      publicIPAllocationMethod = pulumi.Input.asOptionalInput<String>(publicIPAllocationMethod),
      publicIPPrefix = pulumi.Input.asOptionalInput<SubResource>(publicIPPrefix),
      publicIpAddressName = pulumi.Input.asOptionalInput<String>(publicIpAddressName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      servicePublicIPAddress = pulumi.Input.asOptionalInput<PublicIPAddressNetwork>(servicePublicIPAddress),
      sku = pulumi.Input.asOptionalInput<PublicIPAddressSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zones = pulumi.Input.asOptionalInput<List<String>>(zones);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddosSettings': ?pulumi.Input.mapOptionalInputValue<DdosSettings, Map<String, dynamic>>(ddosSettings, (value) => value.toMap()),
      'deleteOption': ?deleteOption,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressDnsSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'id': ?id,
      'idleTimeoutInMinutes': ?idleTimeoutInMinutes,
      'ipAddress': ?ipAddress,
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTag>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedPublicIPAddress': ?linkedPublicIPAddress,
      'location': ?location,
      'migrationPhase': ?migrationPhase,
      'natGateway': ?natGateway,
      'publicIPAddressVersion': ?publicIPAddressVersion,
      'publicIPAllocationMethod': ?publicIPAllocationMethod,
      'publicIPPrefix': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPPrefix, (value) => value.toMap()),
      'publicIpAddressName': ?publicIpAddressName,
      'resourceGroupName': resourceGroupName,
      'servicePublicIPAddress': ?servicePublicIPAddress,
      'sku': ?pulumi.Input.mapOptionalInputValue<PublicIPAddressSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zones': ?zones,
    };
  }

  factory PublicIPAddressArgs.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressArgs(
      ddosSettings: map['ddosSettings'] == null ? null : pulumi.Output.create<DdosSettings>(DdosSettings.fromMap((map['ddosSettings'] as Map).cast<String, dynamic>())),
      deleteOption: map['deleteOption'] == null ? null : pulumi.Output.create<String>(map['deleteOption'] as String),
      dnsSettings: map['dnsSettings'] == null ? null : pulumi.Output.create<PublicIPAddressDnsSettings>(PublicIPAddressDnsSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      idleTimeoutInMinutes: map['idleTimeoutInMinutes'] == null ? null : pulumi.Output.create<int>(map['idleTimeoutInMinutes'] as int),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      ipTags: map['ipTags'] == null ? null : pulumi.Output.create<List<IpTag>>(pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>()))),
      linkedPublicIPAddress: map['linkedPublicIPAddress'] == null ? null : pulumi.Output.create<PublicIPAddressNetwork>(map['linkedPublicIPAddress'] as PublicIPAddressNetwork),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      migrationPhase: map['migrationPhase'] == null ? null : pulumi.Output.create<String>(map['migrationPhase'] as String),
      natGateway: map['natGateway'] == null ? null : pulumi.Output.create<NatGatewayNetwork>(map['natGateway'] as NatGatewayNetwork),
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : pulumi.Output.create<String>(map['publicIPAddressVersion'] as String),
      publicIPAllocationMethod: map['publicIPAllocationMethod'] == null ? null : pulumi.Output.create<String>(map['publicIPAllocationMethod'] as String),
      publicIPPrefix: map['publicIPPrefix'] == null ? null : pulumi.Output.create<SubResource>(SubResource.fromMap((map['publicIPPrefix'] as Map).cast<String, dynamic>())),
      publicIpAddressName: map['publicIpAddressName'] == null ? null : pulumi.Output.create<String>(map['publicIpAddressName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      servicePublicIPAddress: map['servicePublicIPAddress'] == null ? null : pulumi.Output.create<PublicIPAddressNetwork>(map['servicePublicIPAddress'] as PublicIPAddressNetwork),
      sku: map['sku'] == null ? null : pulumi.Output.create<PublicIPAddressSku>(PublicIPAddressSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zones: map['zones'] == null ? null : pulumi.Output.create<List<String>>((map['zones'] as List).cast<String>()),
    );
  }
}

