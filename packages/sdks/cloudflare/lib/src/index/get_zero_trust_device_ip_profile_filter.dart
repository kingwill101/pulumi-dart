// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceIpProfileFilter {
  /// The number of IP profiles to return per page.
  final pulumi.Input<int> perPage;

  /// Creates a new [GetZeroTrustDeviceIpProfileFilter].
  /// [perPage] The number of IP profiles to return per page.
  const GetZeroTrustDeviceIpProfileFilter({
    required this.perPage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perPage': perPage,
    };
  }

  factory GetZeroTrustDeviceIpProfileFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceIpProfileFilter(
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toInt()),
    );
  }
}
