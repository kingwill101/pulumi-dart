// ignore_for_file: unused_element, unnecessary_cast


class DomainMemoryTune {
  /// Specifies the hard limit for memory allocation, influencing how much memory the domain can consume.
  final double? hardLimit;
  /// Defines the unit used for specifying the hard limit on memory allocation.
  final String? hardLimitUnit;
  /// Sets the minimum guaranteed memory allocation for the domain, ensuring it has sufficient resources.
  final double? minGuarantee;
  /// Specifies the unit for the minimum guaranteed memory allocation.
  final String? minGuaranteeUnit;
  /// Configures the soft limit for memory usage, allowing for temporary increases beyond this point, if necessary.
  final double? softLimit;
  /// Sets the unit for the specified soft limit on memory allocation.
  final String? softLimitUnit;
  /// Defines the hard limit for swap usage, controlling the maximum amount of swapped memory allowed.
  final double? swapHardLimit;
  /// Specifies the unit for the swap hard limit configuration.
  final String? swapHardLimitUnit;

  /// Creates a new [DomainMemoryTune].
  /// [hardLimit] Specifies the hard limit for memory allocation, influencing how much memory the domain can consume.
  /// [hardLimitUnit] Defines the unit used for specifying the hard limit on memory allocation.
  /// [minGuarantee] Sets the minimum guaranteed memory allocation for the domain, ensuring it has sufficient resources.
  /// [minGuaranteeUnit] Specifies the unit for the minimum guaranteed memory allocation.
  /// [softLimit] Configures the soft limit for memory usage, allowing for temporary increases beyond this point, if necessary.
  /// [softLimitUnit] Sets the unit for the specified soft limit on memory allocation.
  /// [swapHardLimit] Defines the hard limit for swap usage, controlling the maximum amount of swapped memory allowed.
  /// [swapHardLimitUnit] Specifies the unit for the swap hard limit configuration.
  DomainMemoryTune({
    this.hardLimit,
    this.hardLimitUnit,
    this.minGuarantee,
    this.minGuaranteeUnit,
    this.softLimit,
    this.softLimitUnit,
    this.swapHardLimit,
    this.swapHardLimitUnit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hardLimit': ?hardLimit,
      'hardLimitUnit': ?hardLimitUnit,
      'minGuarantee': ?minGuarantee,
      'minGuaranteeUnit': ?minGuaranteeUnit,
      'softLimit': ?softLimit,
      'softLimitUnit': ?softLimitUnit,
      'swapHardLimit': ?swapHardLimit,
      'swapHardLimitUnit': ?swapHardLimitUnit,
    };
  }

  factory DomainMemoryTune.fromMap(Map<String, dynamic> map) {
    return DomainMemoryTune(
      hardLimit: map['hardLimit'] == null ? null : map['hardLimit'] as double,
      hardLimitUnit: map['hardLimitUnit'] == null ? null : map['hardLimitUnit'] as String,
      minGuarantee: map['minGuarantee'] == null ? null : map['minGuarantee'] as double,
      minGuaranteeUnit: map['minGuaranteeUnit'] == null ? null : map['minGuaranteeUnit'] as String,
      softLimit: map['softLimit'] == null ? null : map['softLimit'] as double,
      softLimitUnit: map['softLimitUnit'] == null ? null : map['softLimitUnit'] as String,
      swapHardLimit: map['swapHardLimit'] == null ? null : map['swapHardLimit'] as double,
      swapHardLimitUnit: map['swapHardLimitUnit'] == null ? null : map['swapHardLimitUnit'] as String,
    );
  }
}

