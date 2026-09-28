// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_byoip_prefix_resources_address.dart';

/// Result data returned by getByoipPrefixResources.
class GetByoipPrefixResourcesResult {
  /// A list of IP addresses allocated from the BYOIP prefix. Each address has the following attributes:
  final List<GetByoipPrefixResourcesAddress>? addresses;
  final String? byoipPrefixUuid;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;

  /// Creates a new [GetByoipPrefixResourcesResult].
  /// [addresses] A list of IP addresses allocated from the BYOIP prefix. Each address has the following attributes:
  /// [byoipPrefixUuid] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetByoipPrefixResourcesResult({
    this.addresses,
    this.byoipPrefixUuid,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?(() { final guardedValue = addresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetByoipPrefixResourcesAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'byoipPrefixUuid': ?byoipPrefixUuid,
      'id': ?id,
    };
  }

  factory GetByoipPrefixResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResourcesResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetByoipPrefixResourcesAddress>(guardedValue, (value) => GetByoipPrefixResourcesAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      byoipPrefixUuid: (() { final guardedValue = map['byoipPrefixUuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
