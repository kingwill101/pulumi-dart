// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_memory_backing_memory_huge_pages_hugepage.dart';

class DomainMemoryBackingMemoryHugePages {
  /// Defines the configuration options for huge pages, particularly their count and characteristics.
  final pulumi.Input<List<DomainMemoryBackingMemoryHugePagesHugepage>>?
  hugepages;

  /// Creates a new [DomainMemoryBackingMemoryHugePages].
  /// [hugepages] Defines the configuration options for huge pages, particularly their count and characteristics.
  DomainMemoryBackingMemoryHugePages({this.hugepages});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepages':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainMemoryBackingMemoryHugePagesHugepage>,
            List<Map<String, dynamic>>
          >(
            hugepages,
            (value) =>
                pulumi.Input.encodeList<
                  DomainMemoryBackingMemoryHugePagesHugepage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainMemoryBackingMemoryHugePages.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBackingMemoryHugePages(
      hugepages: (() {
        final guardedValue = map['hugepages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainMemoryBackingMemoryHugePagesHugepage>(
            guardedValue,
            (value) => DomainMemoryBackingMemoryHugePagesHugepage.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
