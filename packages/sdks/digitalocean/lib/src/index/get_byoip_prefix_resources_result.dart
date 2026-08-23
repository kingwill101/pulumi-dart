// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_byoip_prefix_resources_address.dart';

/// Result data returned by getByoipPrefixResources.
class GetByoipPrefixResourcesResult {
  /// A list of IP addresses allocated from the BYOIP prefix. Each address has the following attributes:
  final List<GetByoipPrefixResourcesAddress> addresses;
  final String byoipPrefixUuid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Creates a new [GetByoipPrefixResourcesResult].
  /// [addresses] A list of IP addresses allocated from the BYOIP prefix. Each address has the following attributes:
  /// [byoipPrefixUuid] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  const GetByoipPrefixResourcesResult({
    required this.addresses,
    required this.byoipPrefixUuid,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': pulumi.Input.encodeList<GetByoipPrefixResourcesAddress, Map<String, dynamic>>(addresses, (value) => value.toMap()),
      'byoipPrefixUuid': byoipPrefixUuid,
      'id': id,
    };
  }

  factory GetByoipPrefixResourcesResult.fromMap(Map<String, dynamic> map) {
    return GetByoipPrefixResourcesResult(
      addresses: pulumi.Input.decodeList<GetByoipPrefixResourcesAddress>(map['addresses']!, (value) => GetByoipPrefixResourcesAddress.fromMap((value as Map).cast<String, dynamic>())),
      byoipPrefixUuid: map['byoipPrefixUuid'] as String,
      id: map['id'] as String,
    );
  }
}
