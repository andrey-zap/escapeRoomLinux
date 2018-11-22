import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.stream.Stream;

public class magic {
    public static void main(String args[]) {

        StringBuilder magic = new StringBuilder();
        String magicWord = "vingardiumleviosa";
        if(args.length != 1) {
            System.out.println("Give me a file 'magic' with the magic words!");
            System.exit(1);
        }

        if(!args[0].equalsIgnoreCase("what is this?"))
            System.out.println("i dont understand!");
        else
        {
                try (Stream<String> stream = Files.lines(Paths.get(args[0]))) {
                    stream.forEach(magic::append);
                } catch (IOException e) {
                    e.printStackTrace();
                }

                if(magic.toString().equalsIgnoreCase(magicWord))
                    System.out.println("The pass to next room is: linuxmagic");
                else
                    System.out.println("wrong magic word!");



        }
    }
}