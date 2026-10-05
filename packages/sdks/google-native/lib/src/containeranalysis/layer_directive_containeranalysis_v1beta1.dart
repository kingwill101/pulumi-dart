import 'package:pulumi/pulumi.dart' as pulumi;

/// Required. The recovered Dockerfile directive used to construct this layer.
enum LayerDirectiveContaineranalysisV1beta1 implements pulumi.PulumiEnum<String> {
  directiveUnspecified("DIRECTIVE_UNSPECIFIED"),
  maintainer("MAINTAINER"),
  run("RUN"),
  cmd("CMD"),
  label("LABEL"),
  expose("EXPOSE"),
  env("ENV"),
  add("ADD"),
  copy("COPY"),
  entrypoint("ENTRYPOINT"),
  volume("VOLUME"),
  user("USER"),
  workdir("WORKDIR"),
  arg("ARG"),
  onbuild("ONBUILD"),
  stopsignal("STOPSIGNAL"),
  healthcheck("HEALTHCHECK"),
  shell("SHELL");

  const LayerDirectiveContaineranalysisV1beta1(this.wireValue);
  @override
  final String wireValue;

  static LayerDirectiveContaineranalysisV1beta1 fromValue(String value) {
    for (final item in LayerDirectiveContaineranalysisV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LayerDirectiveContaineranalysisV1beta1 value: $value');
  }
}
