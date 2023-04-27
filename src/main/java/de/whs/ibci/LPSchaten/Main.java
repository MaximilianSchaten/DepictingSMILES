package de.whs.ibci.LPSchaten;

import javafx.application.Application;
import javafx.stage.Stage;

/**
 * Runs an Application to depict a SMILES
 */
public class Main extends Application {

    //region Variables
    /**
     * Model to depict a given SMILES
     */
    Model model;

    /**
     * View to show the GUI
     */
    View view;

    /**
     * Controller to let the View and Model interact with each other
     */
    Controller controller;
    //endregion

    //region Constructor
    /**
     * constructs the classes of the MVC model (model, view and controller) and shows the view
     * @param primaryStage shows GUI
     */
    @Override
    public void start(Stage primaryStage){
        this.view = new View();
        this.model = new Model();
        this.controller = new Controller(this.view, this.model);
    }
    //endregion

}
