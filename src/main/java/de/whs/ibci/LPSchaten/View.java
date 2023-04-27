package de.whs.ibci.LPSchaten;

import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

/**
 * View for depicting smiles as Image
 */
public class View {

    //region Variables
    private Stage primaryStage;

    /**
     * Pane (Borderpane) to arrange simply arrange components created in this View
     */
    private BorderPane pane;

    /**
     * Stackpane to display Image and error message in the center of the borderpane
     */
    private StackPane stackPane;

    /**
     * HBox to set the two buttons next to each other in the bottom part of the borderpane
     */
    private HBox hBoxBottom;

    /**
     * includes label to show what to insert and the Textfield
     */
    private HBox hBoxTop;
    /**
     * overall Scene of the GUI
     */
    private Scene scene;
    /**
     * TextField to insert the SMILES to depict
     */
    private TextField smilesInput;

    /**
     * Button to depict SMILES on click
     */
    private Button bDepict;

    /**
     * Button to clear Center(ImageView + error message) and Textfield
     */
    private Button bClear;

    /**
     * ImageView to show the depicted SMILES as Image
     */
    private ImageView imageView;

    /**
     * Label to show error message when something different from a smiles has been entered
     */
    private Label errorMessage;

    /**
     * Label to show what to inset in the Textfield
     */
    private Label inputTop;

    //endregion

    //region Constructor
    /**
     * Constructs all the elemnts used in the GUI
     */
    public View() {

        //Stage
        this.primaryStage = new Stage();
        this.pane = new BorderPane();
        this.pane.setPrefSize(300, 300);
        this.pane.setMinSize(300, 500);
        this.pane.setPadding(new Insets(0, 10, 0, 10));

        //Center
        this.stackPane = new StackPane();
        this.errorMessage = new Label();
        this.errorMessage.setTextFill(Color.RED);
        this.errorMessage.setStyle("-fx-font: BOLD 18 arial;");
        this.imageView = new ImageView();
        this.imageView.setSmooth(true);
        this.imageView.isResizable();
        this.stackPane.getChildren().add(this.imageView);
        this.stackPane.getChildren().add(this.errorMessage);
        this.stackPane.setStyle("-fx-border-color: black;" + "-fx-background-color: white");
        this.stackPane.setAlignment(Pos.CENTER);
        this.pane.setAlignment(this.stackPane, Pos.CENTER);
        this.pane.setCenter(this.stackPane);

        //Top
        this.hBoxTop = new HBox(10);
        this.smilesInput = new TextField();
        this.smilesInput.isResizable();
        this.smilesInput.setPrefWidth(700);
        this.smilesInput.setMinWidth(50);
        this.inputTop = new Label("SMILES Input:");
        this.inputTop.setStyle("-fx-font: BOLD 12 arial;");
        this.inputTop.setMinWidth(85);
        this.hBoxTop.getChildren().add(this.inputTop);
        this.hBoxTop.getChildren().add(this.smilesInput);
        this.hBoxTop.setPadding(new Insets(10, 0, 10, 0));
        this.inputTop.setAlignment(Pos.CENTER);
        this.pane.setTop(this.hBoxTop);

        //Bottom
        this.hBoxBottom = new HBox(50);
        this.hBoxBottom.isResizable();
        this.bDepict = new Button("Depict");
        this.bDepict.setPrefSize(400, 50);
        this.bDepict.setMinSize(40, 50);
        this.bDepict.setStyle("-fx-font: BOLD 13 arial;");
        this.bClear = new Button("Clear");
        this.bClear.setStyle("-fx-font: BOLD 12 arial;");
        this.bClear.setPrefSize(150, 50);
        this.bClear.setMinSize(40, 50);
        this.hBoxBottom.getChildren().add(this.bDepict);
        this.hBoxBottom.getChildren().add(this.bClear);
        this.hBoxBottom.setAlignment(Pos.CENTER);
        this.hBoxBottom.setPadding(new Insets(25));
        this.pane.setAlignment(this.hBoxBottom, Pos.CENTER);
        this.pane.setBottom(this.hBoxBottom);

        //Scene
        this.scene = new Scene(this.pane, 1000, 700);
        this.primaryStage.setMinWidth(600);
        this.primaryStage.setMinHeight(600);
        this.primaryStage.setTitle("Depicting SMILES");
        this.primaryStage.setScene(this.scene);
        this.primaryStage.show();

    }
    //endregion

    //region Methods
    /**
     * @return Button bDepict
     */
    public Button getbDepict() {
        return this.bDepict;
    }

    /**
     * @return Button bClear
     */
    public Button getbClear() {
        return this.bClear;
    }

    /**
     * @return Input of the Textfield
     */
    public TextField getSmilesInput() {
        return this.smilesInput;
    }

    /**
     * sets an Image into the ImageView in the Center
     * @param img1 image which is shown in the ImageView
     */
    public void setImageView(Image img1) {
        this.imageView.setImage(img1);
    }

    /**
     * set Image to null and empty the label text to clear the center of the borderpane
     */
    public void clearCenter() {
        this.imageView.setImage(null);
        this.errorMessage.setText("");
    }

    /**
     * Empty Textfield smilesInput
     */
    public void clearTextfield() {
        this.smilesInput.setText("");
    }

    /**
     * sets the text for the error message
     * @param label1 String that contains the given ErrorMessage
     */
    public void setErrorMessage(String label1) {
        this.errorMessage.setText(label1);
    }
    //endregion

}



