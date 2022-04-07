# Chain_API
Script en LINUX BASH para buscar direcciones de criptoactivos sancionadas. Usando la API de Chainalysis
  
                                                                                     
                                                             
LICENCIA
--------
Este script es totalmente gratuito. Ten en cuenta que no ha sido testado. Tienes el fichero txt adjunto para comprobar que te funciona perfectamente. No me hago responsable de fallos en otro sistemas operativos porque como he dicho no ha sido testado. En Kali Linux me funciona correctamte en la versión 5.15.0-kali3-amd64 #1 Debian 5.15.15-2kali1 (2022-01-31) x86_64 GNU/Linux.


PRESENTACIÓN
------------

Chain_API es un script de BASH creado en Kali Linux. Para ponerlo en marcha necesitarás una API que otorga Chainalysis a los ciberinvestigadores. Chainalysis actualmente es la empresa con la tecnología AML (Anti Money Laundering) más importante del mundo.

En caso que quieras saber si una dirección Bitcoin o de cualquier otra criptodivisa de la cual has sido víctima por fraude está en la lista así como información sobre las personas que hay detrás pero no puedas porque no eres ciberinvestigador puedes contactar conmigo de la siguiente manera:

- Twitter: @rickdeckard23
- Envíame un DM
- Ten preparado un documento TXT con todas las direcciones a analizar sean cuales sean.
- El coste del servicio es de 12,50€ impuestos incluidos
- El pago se puede realizar cualquier criptomoneda o token conocido si se quiere.

FUNCIONAMIENTO
---------------

En la terminal Linux ejecuta el siguiente comando:

      ./chain_api.sh <YOUR_API_KEY>
      
Después se te pedirá un fichero txt donde están las direcciones que quieres analizar. Si pones el fichero btc_address_test.txt que adjuntamos verás como realizará un escaneo de todas estas direcciones relacionas con temas de Ransomware y otros delitos.
