// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressesAddress {
  /// The IP address (for example `1.2.3.4`).
  final pulumi.Input<String> address;
  /// The IP address type, can be `EXTERNAL` or `INTERNAL`.
  final pulumi.Input<String> addressType;
  /// The IP address description.
  final pulumi.Input<String> description;
  /// A map containing IP labels.
  final pulumi.Input<Map<String, String>> labels;
  /// The IP address name.
  final pulumi.Input<String> name;
  /// The prefix length of the IP range. If not present, it means the address field is a single IP address.
  final pulumi.Input<int> prefixLength;
  /// Region that should be considered to search addresses.
  /// All regions are considered if missing.
  final pulumi.Input<String> region;
  /// The URI of the created resource.
  final pulumi.Input<String> selfLink;
  /// Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  final pulumi.Input<String> status;

  /// Creates a new [GetAddressesAddress].
  /// [address] The IP address (for example `1.2.3.4`).
  /// [addressType] The IP address type, can be `EXTERNAL` or `INTERNAL`.
  /// [description] The IP address description.
  /// [labels] A map containing IP labels.
  /// [name] The IP address name.
  /// [prefixLength] The prefix length of the IP range. If not present, it means the address field is a single IP address.
  /// [region] Region that should be considered to search addresses.
  /// [selfLink] The URI of the created resource.
  /// [status] Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  GetAddressesAddress({
    required this.address,
    required this.addressType,
    required this.description,
    required this.labels,
    required this.name,
    required this.prefixLength,
    required this.region,
    required this.selfLink,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'addressType': addressType,
      'description': description,
      'labels': labels,
      'name': name,
      'prefixLength': prefixLength,
      'region': region,
      'selfLink': selfLink,
      'status': status,
    };
  }

  factory GetAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetAddressesAddress(
      address: pulumi.Input.fromValue(map['address'] as String),
      addressType: pulumi.Input.fromValue(map['addressType'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      prefixLength: pulumi.Input.fromValue(map['prefixLength'] as int),
      region: pulumi.Input.fromValue(map['region'] as String),
      selfLink: pulumi.Input.fromValue(map['selfLink'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

