// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_memory_backing_memory_access.dart';
import 'domain_memory_backing_memory_allocation.dart';
import 'domain_memory_backing_memory_huge_pages.dart';
import 'domain_memory_backing_memory_source.dart';

class DomainMemoryBacking {
  /// Defines the access mode for the memory backing, which influences how memory is treated by the hypervisor.
  final pulumi.Input<DomainMemoryBackingMemoryAccess>? memoryAccess;
  /// Configures the allocation properties for the memory backing of the domain, affecting its performance.
  final pulumi.Input<DomainMemoryBackingMemoryAllocation>? memoryAllocation;
  /// Controls whether memory discard is enabled, allowing the hypervisor to reclaim unused memory.
  final pulumi.Input<bool>? memoryDiscard;
  /// Configures the use of huge pages for memory allocation, which can improve performance by reducing page table overhead.
  final pulumi.Input<DomainMemoryBackingMemoryHugePages>? memoryHugePages;
  /// Controls whether the memory backing is locked, preventing it from being swapped or moved.
  final pulumi.Input<bool>? memoryLocked;
  /// Configures whether shared pages are forbidden for the domain, affecting memory sharing behaviors.
  final pulumi.Input<bool>? memoryNosharepages;
  /// Specifies the source from which the memory backing is allocated, influencing its origin.
  final pulumi.Input<DomainMemoryBackingMemorySource>? memorySource;

  /// Creates a new [DomainMemoryBacking].
  /// [memoryAccess] Defines the access mode for the memory backing, which influences how memory is treated by the hypervisor.
  /// [memoryAllocation] Configures the allocation properties for the memory backing of the domain, affecting its performance.
  /// [memoryDiscard] Controls whether memory discard is enabled, allowing the hypervisor to reclaim unused memory.
  /// [memoryHugePages] Configures the use of huge pages for memory allocation, which can improve performance by reducing page table overhead.
  /// [memoryLocked] Controls whether the memory backing is locked, preventing it from being swapped or moved.
  /// [memoryNosharepages] Configures whether shared pages are forbidden for the domain, affecting memory sharing behaviors.
  /// [memorySource] Specifies the source from which the memory backing is allocated, influencing its origin.
  DomainMemoryBacking({
    this.memoryAccess,
    this.memoryAllocation,
    this.memoryDiscard,
    this.memoryHugePages,
    this.memoryLocked,
    this.memoryNosharepages,
    this.memorySource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryAccess': ?pulumi.Input.mapOptionalInputValue<DomainMemoryBackingMemoryAccess, Map<String, dynamic>>(memoryAccess, (value) => value.toMap()),
      'memoryAllocation': ?pulumi.Input.mapOptionalInputValue<DomainMemoryBackingMemoryAllocation, Map<String, dynamic>>(memoryAllocation, (value) => value.toMap()),
      'memoryDiscard': ?memoryDiscard,
      'memoryHugePages': ?pulumi.Input.mapOptionalInputValue<DomainMemoryBackingMemoryHugePages, Map<String, dynamic>>(memoryHugePages, (value) => value.toMap()),
      'memoryLocked': ?memoryLocked,
      'memoryNosharepages': ?memoryNosharepages,
      'memorySource': ?pulumi.Input.mapOptionalInputValue<DomainMemoryBackingMemorySource, Map<String, dynamic>>(memorySource, (value) => value.toMap()),
    };
  }

  factory DomainMemoryBacking.fromMap(Map<String, dynamic> map) {
    return DomainMemoryBacking(
      memoryAccess: map['memoryAccess'] == null ? null : (DomainMemoryBackingMemoryAccess.fromMap((map['memoryAccess']! as Map).cast<String, dynamic>())).input(),
      memoryAllocation: map['memoryAllocation'] == null ? null : (DomainMemoryBackingMemoryAllocation.fromMap((map['memoryAllocation']! as Map).cast<String, dynamic>())).input(),
      memoryDiscard: map['memoryDiscard'] == null ? null : (map['memoryDiscard']! as bool).input(),
      memoryHugePages: map['memoryHugePages'] == null ? null : (DomainMemoryBackingMemoryHugePages.fromMap((map['memoryHugePages']! as Map).cast<String, dynamic>())).input(),
      memoryLocked: map['memoryLocked'] == null ? null : (map['memoryLocked']! as bool).input(),
      memoryNosharepages: map['memoryNosharepages'] == null ? null : (map['memoryNosharepages']! as bool).input(),
      memorySource: map['memorySource'] == null ? null : (DomainMemoryBackingMemorySource.fromMap((map['memorySource']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

