// ignore_for_file: non_constant_identifier_names

library pulumi_tls;

import 'package:pulumi_tls/index.dart' as _index;
import 'package:pulumi_tls/providers.dart' as _providers;

final index = _IndexModuleNamespace();
final providers = _ProvidersModuleNamespace();

class _IndexModuleNamespace {
  _IndexModuleNamespace();
  final CertRequest = _index.CertRequest.new;
  final CertRequestArgs = _index.CertRequestArgs.new;
  final CertRequestSubject = _index.CertRequestSubject.new;
  final CertRequestSubjectArgs = _index.CertRequestSubject.new;
  final GetCertificateArgs = _index.GetCertificateArgs.new;
  final GetCertificateCertificate = _index.GetCertificateCertificate.new;
  final GetCertificateCertificateArgs = _index.GetCertificateCertificate.new;
  final GetCertificateResult = _index.GetCertificateResult.new;
  final GetCertificateResultArgs = _index.GetCertificateResult.new;
  final GetPublicKeyArgs = _index.GetPublicKeyArgs.new;
  final GetPublicKeyResult = _index.GetPublicKeyResult.new;
  final GetPublicKeyResultArgs = _index.GetPublicKeyResult.new;
  final LocallySignedCert = _index.LocallySignedCert.new;
  final LocallySignedCertArgs = _index.LocallySignedCertArgs.new;
  final PrivateKey = _index.PrivateKey.new;
  final PrivateKeyArgs = _index.PrivateKeyArgs.new;
  final ProviderProxy = _index.ProviderProxy.new;
  final ProviderProxyArgs = _index.ProviderProxy.new;
  final SelfSignedCert = _index.SelfSignedCert.new;
  final SelfSignedCertArgs = _index.SelfSignedCertArgs.new;
  final SelfSignedCertSubject = _index.SelfSignedCertSubject.new;
  final SelfSignedCertSubjectArgs = _index.SelfSignedCertSubject.new;
  final getCertificate = _index.getCertificate;
  final getPublicKey = _index.getPublicKey;
}

class _ProvidersModuleNamespace {
  _ProvidersModuleNamespace();
  final TerraformConfigArgs = _providers.TerraformConfigArgs.new;
  final TerraformConfigResult = _providers.TerraformConfigResult.new;
  final TerraformConfigResultArgs = _providers.TerraformConfigResult.new;
  final terraformConfig = _providers.terraformConfig;
}

