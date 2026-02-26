import 'package:pulumi/src/resource/dependency_resource.dart';
import 'package:pulumi/src/resource/provider_resource.dart';

ProviderResource providerResource(String packageName, String name) {
  final urn = 'urn:pulumi:stack::project::pulumi:providers:$packageName::$name';
  return ProviderResource.reference(packageName, urn, id: 'id-$name');
}

DependencyResource dependencyResource(String type, String name) {
  return DependencyResource('urn:pulumi:stack::project::$type::$name');
}
