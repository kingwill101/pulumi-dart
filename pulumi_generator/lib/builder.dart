import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'src/pulumi_generator.dart';

Builder pulumiResourceGenerator(BuilderOptions options) =>
    LibraryBuilder(PulumiResourceGenerator(),
        generatedExtension: '.pulumi.dart');
