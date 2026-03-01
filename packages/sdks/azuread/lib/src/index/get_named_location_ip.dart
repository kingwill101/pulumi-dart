// ignore_for_file: unused_element, unnecessary_cast


class GetNamedLocationIp {
  final List<String> ipRanges;
  final bool trusted;

  /// Creates a new [GetNamedLocationIp].
  /// [ipRanges] Required.
  /// [trusted] Required.
  GetNamedLocationIp({
    required this.ipRanges,
    required this.trusted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipRanges': ipRanges,
      'trusted': trusted,
    };
  }

  factory GetNamedLocationIp.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationIp(
      ipRanges: (map['ipRanges'] as List).cast<String>(),
      trusted: map['trusted'] as bool,
    );
  }
}

