import 'package:pulumi/pulumi.dart' as pulumi;

final registerPackageRequest = pulumi.RegisterPackageRequest(
  name: "extbase",
  version: "45.0.0",
  extensionParameterization: pulumi.Parameterization(
    name: "myext",
    version: "2.0.0",
    value: <int>[72, 101, 108, 108, 111],
  ),
);
