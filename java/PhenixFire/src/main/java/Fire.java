import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Fire {
    public static void main(String args[]) {

        String pass ="The password to the next room is: fireofthephoenix";
        if(args.length != 1) {
            System.out.println("i dont understand!");
            System.exit(1);
        }

        if(!args[0].equalsIgnoreCase("fire"))
        System.out.println("i dont understand!");
        else
        {
            System.out.println("Creating Fire!!!");
            System.out.println("Check new files!");
            try {
                File file = new File("fire.txt");
                BufferedWriter output = new BufferedWriter(new FileWriter(file));
                output.write(pass);
                output.close();
            } catch ( IOException e ) {
                e.printStackTrace();
            }


        }
    }
}