import 'package:pulumi/pulumi.dart' as pulumi;

/// One of the publicly available Docker repositories supported by Artifact Registry.
enum DockerRepositoryPublicRepository implements pulumi.PulumiEnum<String> {
  publicRepositoryUnspecified("PUBLIC_REPOSITORY_UNSPECIFIED"),
  dockerHub("DOCKER_HUB");

  const DockerRepositoryPublicRepository(this.wireValue);
  @override
  final String wireValue;

  static DockerRepositoryPublicRepository fromValue(String value) {
    for (final item in DockerRepositoryPublicRepository.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DockerRepositoryPublicRepository value: $value');
  }
}
