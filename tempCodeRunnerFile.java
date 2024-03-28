import javax.swing.JOptionPane;

public class RumusMatematika {

    public static void main(String[] args) {
        int choice;
        do {
            String menu = "Pilih rumus matematika yang ingin dihitung:\n"
                    + "1. Volume Tabung\n"
                    + "2. Keliling Jajaran Genjang\n"
                    + "3. Volume Prisma Segitiga\n"
                    + "4. Keliling Lingkaran\n"
                    + "5. Luas Lingkaran\n"
                    + "6. Keliling Segitiga Sembarang\n"
                    + "7. Luas Segitiga Sembarang\n"
                    + "8. Keliling Layang-layang\n"
                    + "9. Volume Kotak\n"
                    + "10. Luas Trapesium\n"
                    + "0. Keluar";
            String input = JOptionPane.showInputDialog(menu);
            choice = Integer.parseInt(input);

            switch (choice) {
                case 1:
                    hitungVolumeTabung();
                    break;
                case 2:
                    hitungKelilingJajaranGenjang();
                    break;
                case 3:
                    hitungVolumePrismaSegitiga();
                    break;
                case 4:
                    hitungKelilingLingkaran();
                    break;
                case 5:
                    hitungLuasLingkaran();
                    break;
                case 6:
                    hitungKelilingSegitigaSembarang();
                    break;
                case 7:
                    hitungLuasSegitigaSembarang();
                    break;
                case 8:
                    hitungKelilingLayangLayang();
                    break;
                case 9:
                    hitungVolumeKotak();
                    break;
                case 10:
                    hitungLuasTrapesium();
                    break;
                case 0:
                    JOptionPane.showMessageDialog(null, "Terima kasih telah menggunakan program ini!");
                    break;
                default:
                    JOptionPane.showMessageDialog(null, "Pilihan tidak valid!");
            }
        } while (choice != 0);
    }

    private static void hitungVolumeTabung() {
        double pi = Math.PI;
        double r = Double.parseDouble(JOptionPane.showInputDialog("Masukkan jari-jari tabung: "));
        double p = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi tabung: "));
        double volume = pi * r * r * p;
        JOptionPane.showMessageDialog(null, "Volume tabung adalah: " + volume);
    }

    private static void hitungKelilingJajaranGenjang() {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi a: "));
        double b = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi b: "));
        double keliling = 2 * (a + b);
        JOptionPane.showMessageDialog(null, "Keliling jajaran genjang adalah: " + keliling);
    }

    private static void hitungVolumePrismaSegitiga() {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang alas segitiga: "));
        double t = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi segitiga: "));
        double p = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi prisma: "));
        double volume = 0.5 * a * t * p;
        JOptionPane.showMessageDialog(null, "Volume prisma segitiga adalah: " + volume);
    }

    private static void hitungKelilingLingkaran() {
        double pi = Math.PI;
        double r = Double.parseDouble(JOptionPane.showInputDialog("Masukkan jari-jari lingkaran: "));
        double keliling = 2 * pi * r;
        JOptionPane.showMessageDialog(null, "Keliling lingkaran adalah: " + keliling);
    }

    private static void hitungLuasLingkaran() {
        double pi = Math.PI;
        double r = Double.parseDouble(JOptionPane.showInputDialog("Masukkan jari-jari lingkaran: "));
        double luas = pi * r * r;
        JOptionPane.showMessageDialog(null, "Luas lingkaran adalah: " + luas);
    }

    private static void hitungKelilingSegitigaSembarang() {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi a: "));
        double b = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi b: "));
        double c = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi c: "));
        double keliling = a + b + c;
        JOptionPane.showMessageDialog(null, "Keliling segitiga sembarang adalah: " + keliling);
    }

    private static void hitungLuasSegitigaSembarang() {
        double c = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi c: "));
        double t = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi segitiga: "));
        double luas = 0.5 * c * t;
        JOptionPane.showMessageDialog(null, "Luas segitiga sembarang adalah: " + luas);
    }

    private static void hitungKelilingLayangLayang() {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi a: "));
        double b = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi b: "));
        double c = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi c: "));
        double d = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi d: "));
        double keliling = a + b + c + d;
        JOptionPane.showMessageDialog(null, "Keliling layang-layang adalah: " + keliling);
    }

    private static void hitungVolumeKotak() {
        double p = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang kotak: "));
        double l = Double.parseDouble(JOptionPane.showInputDialog("Masukkan lebar kotak: "));
        double t = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi kotak: "));
        double volume = p * l * t;
        JOptionPane.showMessageDialog(null, "Volume kotak adalah: " + volume);
    }

    private static void hitungLuasTrapesium() {
        double a = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi a: "));
        double at = Double.parseDouble(JOptionPane.showInputDialog("Masukkan panjang sisi at: "));
        double t = Double.parseDouble(JOptionPane.showInputDialog("Masukkan tinggi trapesium: "));
        double luas = 0.5 * (a + at) * t;
        JOptionPane.showMessageDialog(null, "Luas trapesium adalah: " + luas);
    }
}
