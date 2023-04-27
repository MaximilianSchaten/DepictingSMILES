package de.whs.ibci.LPSchaten;

import org.openscience.cdk.exception.CDKException;

/**
 * Controller to let the Model interact with the View
 */
public class Controller {

    /**
     * constructs a controller consisting of model and view which allows the view to show the depicted molecule
     * created in the model
     * @param view
     * @param model
     */
    public Controller(View view, Model model) {

        /**
         Action to depict SMILES
         */
        view.getbDepict().setOnAction(e -> {
            String smiles = view.getSmilesInput().getText();

            try {
                view.setImageView(model.getSmilesStructure(smiles));
            } catch (CDKException ex) {
                view.setErrorMessage("Please insert valid SMILES");
            }
        });

        /**
         Action to clear the center of the pane and text field
         */
        view.getbClear().setOnAction(event -> {
            view.clearCenter();
            view.clearTextfield();
        });

    }

}