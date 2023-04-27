package de.whs.ibci.LPSchaten;

import javafx.embed.swing.SwingFXUtils;
import javafx.scene.image.Image;
import org.openscience.cdk.depict.DepictionGenerator;
import org.openscience.cdk.exception.CDKException;
import org.openscience.cdk.interfaces.IAtomContainer;
import org.openscience.cdk.interfaces.IChemObjectBuilder;
import org.openscience.cdk.smiles.SmilesParser;
import org.openscience.cdk.silent.SilentChemObjectBuilder;

import java.awt.image.BufferedImage;

/**
 * Model to parse a given SMILES and depict it as an Image
 */
public class Model {

    //region Variables
    /**
     * Builds the ChemObject from the parsed SMILES
     */
    private IChemObjectBuilder objectBuilder;
    /**
     * parses the Molecule which is stored in the AtomContainer
     */
    private SmilesParser smilesParser;
    /**
     * depicts the Molecule which is parsed
     */
    private DepictionGenerator depictionGenerator;

    /**
     * Zoom of the depicted Image to fit the GUI
     */
    private int depictionGeneratorZoom; //TODO shall be depending on window size and molecule size

    //endregion

    //region Constructor
    /**
     * constructs builder, parser and a DepictionGenerator to be used to then depict a molecule from given SMILES
     */
    public Model() {

    }
    //endregion

    //region Methods
    /**
     * Creates a molecule and stores it in an AtomContainer to then depict the given molecule and return
     * it as an Image
     * @param smiles String which is the entered SMILES
     * @return an Image which shows the depicted SMILES
     * @throws CDKException Exception that is thrown by CDK classes when some problem has occurred
     */
    public Image getSmilesStructure(String smiles) throws CDKException {

        if (smiles == null || smiles.isEmpty()){
            throw new IllegalArgumentException("SMILES is not a String");
        }

        this.objectBuilder = SilentChemObjectBuilder.getInstance();
        this.smilesParser = new SmilesParser(objectBuilder);
        this.depictionGeneratorZoom = 3;
        this.depictionGenerator = new DepictionGenerator().withZoom(depictionGeneratorZoom).withAtomColors()
                .withSize(500,300);
        IAtomContainer tmpMolecule = smilesParser.parseSmiles(smiles);
        BufferedImage tmpImg = depictionGenerator.depict(tmpMolecule).toImg();
        return SwingFXUtils.toFXImage(tmpImg, null);

    }
    //endregion

}
