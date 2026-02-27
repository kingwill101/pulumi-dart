import 'package:pulumi/pulumi.dart';
import 'package:test/test.dart';

void main() {
  group('dependsOn', () {
    test('merge preserves insertion order and duplicates', () {
      final dep1 = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Dep::one',
      );
      final dep2 = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Dep::two',
      );
      final dep3 = DependencyResource(
        'urn:pulumi:stack::project::pkg:index:Dep::three',
      );

      final merged = ResourceOptions(dependsOn: [dep1])
          .merge(ResourceOptions(dependsOn: [dep2, dep1]))
          .merge(ResourceOptions(dependsOn: [dep3, dep2]));

      expect(merged.dependsOn, isNotNull);
      expect(merged.dependsOn, hasLength(5));
      expect(merged.dependsOn![0], same(dep1));
      expect(merged.dependsOn![1], same(dep2));
      expect(merged.dependsOn![2], same(dep1));
      expect(merged.dependsOn![3], same(dep3));
      expect(merged.dependsOn![4], same(dep2));
    });
  });
}
