import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class BlackBox {


    public static void main(String args[]) {
        System.out.println("Hey! Lets have some fun! Lets create a new command called 'boogiewoogie'!");
        System.out.println("The command will take only 1 argument - a number N, and print \"I like to boogiewoogie every day!\" N times, each on separate line!");
        System.out.println("I will try it now...!");
        System.out.println("Running the command: \"boogiewoogie 3\"...");


        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        Process p;
        try {

            String[] cmd = {
                    "/bin/sh",
                    "-c",
                    "boogiewoogie 3"
            };
            p = Runtime.getRuntime().exec(cmd);
            p.waitFor();
            InputStream output;
            if(p.exitValue() != 0)
                output = p.getErrorStream();
            else
                output = p.getInputStream();

            BufferedReader reader=new BufferedReader(new InputStreamReader(output));
            String line1;
            String line2;
            String line3;
            System.out.println("Command output:");


                System.out.println("Exit value: "+p.exitValue());

                line1 = reader.readLine();
                line2 = reader.readLine();
                line3 = reader.readLine();

                System.out.println(line1);
                System.out.println(line2);
                System.out.println(line3);
                if (line1.equalsIgnoreCase("I like to boogiewoogie every day!") && line1.equalsIgnoreCase(line2) && line2.equalsIgnoreCase(line3)) {
                    System.out.println("Good job!");
                    System.out.println("The pass to open the chest is 'shutupanddance'");
                }
                else
                {
                    System.out.println("Seems like command not found or content not as expected, Please implement \"boogiewoogie\" as described!");
                    System.exit(1);
                }

        }catch (Exception e)
            {
                System.out.println(e.getMessage());
                System.exit(1);
            }

    }
}
