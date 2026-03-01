// ignore_for_file: unused_element, unnecessary_cast


class DomainSysInfoSmbiosOemStrings {
  /// Defines individual entries for the OEM strings in the SMBIOS configuration.
  final List<String>? entries;

  /// Creates a new [DomainSysInfoSmbiosOemStrings].
  /// [entries] Defines individual entries for the OEM strings in the SMBIOS configuration.
  DomainSysInfoSmbiosOemStrings({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries,
    };
  }

  factory DomainSysInfoSmbiosOemStrings.fromMap(Map<String, dynamic> map) {
    return DomainSysInfoSmbiosOemStrings(
      entries: map['entries'] == null ? null : (map['entries'] as List).cast<String>(),
    );
  }
}

