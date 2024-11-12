import 'package:flutter_test/flutter_test.dart';
import 'package:your_app/password_manager.dart';

void main() {
  test('Gera senha forte de comprimento especificado', () {
    final password = PasswordGenerator().generate(length: 12);
    expect(password.length, 12);
  });

  test('Armazena e recupera senha com segurança', () async {
    final storage = SecureStorage();
    await storage.savePassword('testKey', 'securePassword');
    final password = await storage.getPassword('testKey');
    expect(password, 'securePassword');
  });
}



# CHANGELOG

## [1.0.1] - 05-11-2024
### Corretiva
- Corrigido bug de autenticação em dispositivos iOS.

### Adaptativa
- Atualização de dependências para compatibilidade com Flutter 3.5.

### Perfectiva
- Melhorias no desempenho do carregamento de dados.

### Preditiva
- Planejado monitoramento proativo para detecção de acessos suspeitos.
